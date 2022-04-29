Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A712514453
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Apr 2022 10:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9FB804011B;
	Fri, 29 Apr 2022 08:35:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WexAp-1tg5Wu; Fri, 29 Apr 2022 08:35:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B8814091A;
	Fri, 29 Apr 2022 08:35:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C2541BF2A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 08:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 382B283FF8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 08:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q11H7HpARql3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Apr 2022 08:35:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74CFB83FF5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Apr 2022 08:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651221314; x=1682757314;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Eht0kOjYoLpNsVTt4JFOvFBduTBS2RhQ8VluZLqO4yM=;
 b=JcvbK1KNoKt6ShO6V+papWXsHQjTKGPotA8Q9EKhJfHg2UfP1dQ+aXIQ
 gGBlHkGqVLX9KSgX2WeLdAaYmWZIFT7bzGg3OsuKh5mUmU5Axw+cRbe9Z
 wjmXgiXIFliE79ag2ayBJmTfFqU3BBrF5mVK2Zi8II6s2Lbe/586jSSAE
 Gd4xNbX5YvXhc9pafClqbs/hRsFQXncC8loBuN2OdiE8k32ROIwMrN7lI
 UNhNec4pDfcdW1BsaMVmeJVUXZPeaFjOF0pMG6gpXk5D6aTwZ0OQJSBEW
 HTHkmQf0u2O53CFB4boSgVzmfaI16xwrJgk7XhhbnVoRdvfvhIIEyfskM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10331"; a="246492465"
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="246492465"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2022 01:35:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,297,1647327600"; d="scan'208";a="618579924"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 29 Apr 2022 01:35:13 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 01:35:13 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 29 Apr 2022 01:35:12 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 29 Apr 2022 01:35:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 29 Apr 2022 01:35:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hOqEMzLXrAbvVVhdTk1O8ZP3rlJAr5JeT/E4tDS/qhSR1VYEDc0Wxxfrj2d6Ts8+Od6EuTh7MZxgm5ILp7/02b1+0OPLJqlLNchh9rsDWIJ66S5fcKP3UwuCiuppAQVkogHM8vknMepZ8jSqTQeEzUZUzGJ0SHB3AMydwhme3f2nMa/fw8KztJRiK6GKb+l5dY+Q2FOupgCM7VMaNnOPaF4XdUfjCtGghhPy4De5LT/tkfZ69zVMVr9oORNWNtliJ2AJYsgP3dBbzPlyRMNqotQwx6T2efbTFC2k77GSmo/8vyrmZ5LRPF8ABnbhJcgoKTe9C3kdmvKE2irgPGD7EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/a7vIlp0ZRrQIHsk7iyWREJToNSoC7tZT+k3IaVhNU=;
 b=CKf+tjf5Elpu289vBFEkHiKawWQ7ksx3xt4/KX1O4xT/4ZNgpJvGp6yTDOi+gPJ3ljvw+0qNmSyYqgOzPCPntDa0yCtqPFFi1HMCKdWu+ZtiN9fCHv85ZxMCWEcdgXJlkMs0Py/utf2yvL5lKGGsraQLRoprCQ8tXRmMxeL4A6KWLnOXofRYwVHrbWnbRRerEdYokGB527p94yJ99sRpj8Ed2A8GGV24Isg55gJ1IdHuX+ZXwKk3FrnaONNDHAXThbudQzQafA5sdZmrGlSGVOEp0qY50GZksqz8uD2ZN6ZX3lzg1bbLGTwOvMKamP4V1FY692AxZsqRjwe3LqyHTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BL0PR11MB3044.namprd11.prod.outlook.com (2603:10b6:208:7a::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5186.14; Fri, 29 Apr 2022 08:35:11 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:eb0d:3532:d9d8%9]) with mapi id 15.20.5206.013; Fri, 29 Apr 2022
 08:35:10 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3] iavf: Add waiting for
 response from PF in set mac
Thread-Index: AQHYUKZLXgYq1llbkEyFYw9oxshEZ60Gpq0A
Date: Fri, 29 Apr 2022 08:35:10 +0000
Message-ID: <DM8PR11MB5621D6489B620B1638544B66ABFC9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220415085009.2117-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220415085009.2117-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea0acdbe-f77b-49d3-7c2c-08da29bb2c80
x-ms-traffictypediagnostic: BL0PR11MB3044:EE_
x-microsoft-antispam-prvs: <BL0PR11MB3044A32AD5FB61199A19FF62ABFC9@BL0PR11MB3044.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gf1cW9ztehdnDbpTR3WzT2K+u6nlM8ghG5gKSlrxDP+zkfbFEJsGNH/vPQEdGJCMU407+DpvsqBS0D8MTU06jYEUyhlGBW5zP5671Bmfj7AZ239/fAThxMtfj4L5GEdENPxvdVJNfRf0ytOk99D9L8NY7KzjRDnvzND2FLNQyldMqD1RMMm8fdgVWZQsjhngURZ1E7GKMhGloYmvNYRSOKJG0ld6XjCyfRQL26zwFBwX8fEdIMNFIx9U9JvNgcf3/i4dgsNyIINyvjLNjJAhInxlOmuzkH/IAjjhoFkqBW81ss0YoXwvJiRdZqUOmCGBi/J/MInlmQYIY0rHt8xtvG3Mu517dl+Ccf06JQlOlIK61rol/1/2oeOHskS/Kq6Pl4klAtAzy77+/dEwsDXr4hjVtXnwTafPgPh45USveiby64lvpg5aBRYjqO7KPQ5HEANMJVlxA+SKAQgrw6wr6kNI4apouJmoJtEFbz5MTlE/5bS7ZyN0C3jARUGyGN41dOy2pxayEN6531Bf6k2ygMokKCvrnqeVL5KxEB0hZSxC7wGhnODoxAjVTQhFoFzHaquCUmsxNpQP9a5Af+EQwiEN/YtUMrgEWVrSX8mEaM+96ItZ/t8q3/MBUNCgO//A8E3efANtYwyae2z8uehlSdUC8+QEx1qHSwWV70/lsTRn+/FSUj7EJNtxrL4RX5lSzLFMJneO64tSrlrqxahaRhf/vFZCRp7XVm6gc+HhTpo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(64756008)(66446008)(66476007)(66556008)(9686003)(26005)(316002)(4326008)(8676002)(53546011)(66946007)(7696005)(6506007)(76116006)(107886003)(186003)(33656002)(8936002)(52536014)(38100700002)(83380400001)(508600001)(38070700005)(5660300002)(2906002)(82960400001)(55016003)(71200400001)(54906003)(122000001)(110136005)(69900200002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4N91AyCGfXLbpuM6K71KoIiuO7cLbRpUBRuKiqdAlpKGXXdEf6w/E1BwozPZ?=
 =?us-ascii?Q?PKoYTvosfij13WSAV+QqAiKIwoYcGSIuAMN2nnuYtWpXWbe9rPXLGRF7Sctz?=
 =?us-ascii?Q?Ctcsmk2VXPXz2aH2Fq35O53Krt1kAxg+u1opQwUPV+G6fVYrl9grfj8k1FUK?=
 =?us-ascii?Q?bduxXTpckZ7c0NQwpoh3CqQB3Mcvd1Px6kP2MdoufHNqU+ceS27Rprfwn1YO?=
 =?us-ascii?Q?fVfMge+Gwp7VWbkH5RAmbo/VlIiAbqGRTXnqE7OjCGjZ0RkkNh94SIhYB9GY?=
 =?us-ascii?Q?zQE3JCHrLyhGOYzLfU+dIDHkc9PoEiZfl/HFtkyjL/PtBhPIOAq7J3RFYAAZ?=
 =?us-ascii?Q?eu2Lwic8gPnKmn3E+/2yuBVl/vDMct63/ze3M3zMk6HYUArYDFFhNCFzbCWu?=
 =?us-ascii?Q?Kqs97wfIJMXeG5yqpcw6NpiBsqWfVUH6NTX4sqcpt328L1y3+FCmDPldm6BI?=
 =?us-ascii?Q?ESWD4H7jQR+gfeDwpOONhc7b4lFmK0irUIs4na61hyVNXIYCc+C+kR+M/ty8?=
 =?us-ascii?Q?LzjSJc2yzyQ0Fn539lY5PyZRC9kmrM9tpV3zYhtIl0dEYCEJgyL7OKlIWuLc?=
 =?us-ascii?Q?mmuST3K7T587lhLb2oYRHC+dAAGpXrhO6nDubDEyVKzkQgwEeQdDZQ/v0zbV?=
 =?us-ascii?Q?U7eMRYX3bxR4vTbDxi5Q/B7if6TbPGckEEagF6yoRJAb2ViJFS8JaVYjwo1+?=
 =?us-ascii?Q?QRcoS9PSoxgiibon64vaGJ1VcAkRy11iPsES5kvRivx6ScnMPDfmvOKM5+Ew?=
 =?us-ascii?Q?Xr/3CYoRmkF9usMFuA6NeKwZUUYOtqUoH4W7O5JDcT/JsHf0BSTGvINfAs2r?=
 =?us-ascii?Q?NWhARVzCtsQUZyDXQgYdCRhwk2GOJ21AUsYdijzK70wy4qVmS5nTaF1nzrMQ?=
 =?us-ascii?Q?pM5qDMIzm0dY0BwkPG49o/6l+ssgzLyeNLAY1t2jNgHSHjlSbAT077/0tAsz?=
 =?us-ascii?Q?2JVncqfIXiEhYd0O4wUi/4nky7dx1vv2CJrVC6Qjhw5EBFViXK7/sp1i6/bW?=
 =?us-ascii?Q?08y5H6ORyFLUeBhxR2zZiOcBL8IVaHqTgrXjkFjexEwh2jMJxQe+RJGOEGuI?=
 =?us-ascii?Q?jGdNGhBSa4asRUZBTbm2XYOnILvG17W2o/n4UGk5zDzVpbq0NspkHV+NNMTL?=
 =?us-ascii?Q?JOd9IH4KFqltQWQTPAZ46Xzw6U1f36w4dvUde+xFo4l2wmU2SuAyHcej8F4Z?=
 =?us-ascii?Q?U3vO522I2EQtb/d7TtrtwcFaSPGgwFcEA+tDPdtOTnPhjBlTmIhsvH7wL8wS?=
 =?us-ascii?Q?GPOSn65BkfTJFjJvO4njhOj3b2E528x9BXRkPWNhdyCuegIwOwzvjb6ekbXW?=
 =?us-ascii?Q?YVfS5y7EPQKKxV8jaTjhlRxBeUowous3Z+Ezx0JMrxM9um7R08IsAhd6/lOv?=
 =?us-ascii?Q?T9OHyUzbroV1rBU3klirBzauJrMnn/XocGwKrfAkjvcNjlXzQ/4vhc+yW8xR?=
 =?us-ascii?Q?LTDhPl0HfX9rdveYGQ/GXA+CVQBErzVW5Whw6Qy0gzQblouYbMxshBSVGIfK?=
 =?us-ascii?Q?f1QLlaAxxLUPRVzK3dTGLmzklwbYt1b+/Rt2sh5tHcyAyupfwaYCEeMIJPbD?=
 =?us-ascii?Q?bAeJaoxOVzFofbgxpplaQN/FCEcNz3LmrLYjVjnvo223fqAXuu9auMWQC0jW?=
 =?us-ascii?Q?bpMM4iuA43snCikWgy6DZLgzmCepH/Ao79AOxb+ARx81CTp6Ybb5Z8jQkjr3?=
 =?us-ascii?Q?NGOqkDPLmLiMaUDzt0Jfl/0+MpwXiVjCoXJ160YPLt/k+DdGmu2I+yG/QoWl?=
 =?us-ascii?Q?Jt666NsIIoEnNeFqcNFW/C0jX2/sVCY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0acdbe-f77b-49d3-7c2c-08da29bb2c80
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2022 08:35:10.7962 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /c9p2RFaL+DYdu/ZNvPh8xUcvZsKzD+cGWGpBRmMhuSj5YSfaebLlC+VAFaf896ssQD4JQ4xkCZY9+tQPM5MS3ZzQ35Y6cvR7TN8UYtUR5c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3044
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] iavf: Add waiting for
 response from PF in set mac
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
Cc: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Friday, April 15, 2022 10:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Palczewski, Mateusz <mateusz.palczewski@intel.com>; Sylwester
> Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v3] iavf: Add waiting for response
> from PF in set mac
> 
> Make iavf_set_mac synchronous by waiting for a response from a PF.
> Without this iavf_set_mac is always returning success even though set_mac
> can be rejected by a PF.
> This ensures that when set_mac exits netdev MAC is updated.
> This is needed for sending ARPs with correct MAC after changing VF's MAC.
> This is also needed by bonding module.
> 
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v3: Resent the patch to apply to next-queue
>  v2: Changed __IAVF_IN_CRITICAL_TASK to crit_lock
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |   7 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c   | 123 +++++++++++++++---
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  61 ++++++++-
>  3 files changed, 170 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h
> b/drivers/net/ethernet/intel/iavf/iavf.h
> index 49aed3e..fda1198 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -146,7 +146,8 @@ struct iavf_mac_filter {

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
