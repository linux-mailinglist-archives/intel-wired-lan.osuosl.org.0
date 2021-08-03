Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162523DE987
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Aug 2021 11:12:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 99DB140219;
	Tue,  3 Aug 2021 09:12:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9UdnU-dpwUvj; Tue,  3 Aug 2021 09:12:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5100F402BA;
	Tue,  3 Aug 2021 09:12:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DAA61BF2B0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 09:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE07040219
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 09:12:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TrIUZtye66Kr for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Aug 2021 09:12:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 000964016B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Aug 2021 09:11:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10064"; a="235572375"
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="235572375"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 02:11:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,291,1620716400"; d="scan'208";a="479402430"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 03 Aug 2021 02:11:59 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 02:11:58 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 3 Aug 2021 02:11:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Tue, 3 Aug 2021 02:11:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 3 Aug 2021 02:11:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QGHa0eTGy0LKQvr5nJT9kFX27jiBJIv1+5ISUrocOSHV84AHy89EO/rkYHnECsWO3MWo17Yd6eHsSDTI4Dy/fmGGEH6zP4IK2iRZSWpVlFNmlHY82rOWffndHAk12UY5mgNnz87YFctusv5GuYDh3ElaTIGCCncPWWUTDKZSGLOm8hxufxnSXpTDxT6nMLLq1wST32oOHzHtNlSMBTbTV6Tl2YmK3uKxdgQUEpgsM8gxVKM3LxOTLEHZTWA844pvGmPGV6hgdH7US2XKp7EtZVRgfKc537siZkhDBCs3RZi4+JVpdzZXN3fnydS9mf8NObR0WXUQueNOnf0qwOPYhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1s2btKy73TG5nQmti4Z26eoReBlds2GIu842CVCUotc=;
 b=T/V3pFzLNd/hO5mcNIeqc3DOIkES3wAtg67ptabOOoUPUc/3+YFd5TcVwakwkN5382DGD4dNVOjZ2WHK0qzv0REw6SPpz9uH0i33NtluGXsQKuRG5iEZFvDf+TSnCq1NJkL09SP09YOSX7RboWqZqtqKec5Bemc3Z8co2GT04RlQ4J7YV4L8oxh1jk704Unl4d/ZDX3j+DDLbkunM3dB5RculKJqXhe1b1yDNs5EIGyqfnxRlPAsbbNcujnu6Pj7fbldl3JWIlFtMgJW6fVxqASJGx0k5hCAU09xceWeoramws/qq4VEIqYS1IQcAm/vrdmGYUop57OrRdmtvWG9sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1s2btKy73TG5nQmti4Z26eoReBlds2GIu842CVCUotc=;
 b=U8JyeaBQEiqn2jWC2mG9LL2K+xBoFUNGcwPnUuViB+ZFk7CfIrU0J9o4xWjmNRSFSo0qdMUfgJlHrOw1BND2TGfj8z/Aj+Vb/Zwi/RZpxJz3v5Yp5qdsJWa4KDTnRYODRrlKnD+RDbdGedfiFNHg32DbtThkXDQh5JnuMM3wnCg=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1280.namprd11.prod.outlook.com (2603:10b6:300:2b::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Tue, 3 Aug
 2021 09:11:56 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::34d4:c1f3:599a:6b88%8]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 09:11:56 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 01/12] ice: support basic
 E-Switch mode control
Thread-Index: AQHXaauSmFKSAbGLbEaPWC0vESD6Uathu2YQ
Date: Tue, 3 Aug 2021 09:11:56 +0000
Message-ID: <MW3PR11MB455487125EF910181BC47DA59CF09@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20210625024501.6126-1-michal.swiatkowski@linux.intel.com>
 <20210625024501.6126-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20210625024501.6126-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a7313c1e-4880-4a13-2342-08d9565ebe38
x-ms-traffictypediagnostic: MWHPR11MB1280:
x-microsoft-antispam-prvs: <MWHPR11MB128018C715A9A6DF301914199CF09@MWHPR11MB1280.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:556;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eMyz8+spNFU+dCxmsyLFmXMgAqyqk0i5Ff3Zg9r5tQpv4h/YIDcaSZEnYrVwaa57nFhuvURqd0JXmA5qKwU04Ec5xz5v+LEpMTq7bfe21ewig4U6dzVlbsvGw04M56GUyoKHB7DLPsER5OwNT6ghuOyTKZE2patTpII+aZeujyyik5KNVEzDUBJYO9zyVb8LaYwUgvfJy3u8BuMk6DMRMos4jXkEWFPOm1+6OW6fofMZf6QGoj306vbKHS4jPN3GmS2MW9qmP8H27R/P/oOZ4DDalfW3vwo5rxDIIv46g67lNec2hKmEkVOcAf+AThlq7ZV2yCLC1ShoNbrny2d13DU2NgTGWR1LvT3D2nez2im/AI7/L/24y1l29+nTUbkCRoJnYnpqbTVBFT4+/r1vctmgqIG6wX5//x567ZrCUD7dBggcW9w6TXTHWhpLQNnNOf+N6DXZC4pSAPCbTqMgME0o5p5iYne54ur5uRWNsrB4YpUVszQRltbWhbbZAGHd2UwiB/6I6F6omqMp4RFSxoW7ghKimQfl4xXvCDSqc0bbGGzKbEdAtYgOqua877yQAqrZUHZW7An4SGc/UJ3J6+mF0CzSmdoo2IBw1r6i7Gm134UoLfF+ZvkWG+IFlgvk9nyE85Cmm3FmO8s246UIBnJ8s9lmqw+43KG66TNleWTpWhlk/WQ4Bgfc23Vdr1gmen4QkL1O7Xf7c6z9VEAe6A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(366004)(346002)(39860400002)(396003)(66476007)(66556008)(64756008)(66446008)(66946007)(122000001)(38100700002)(76116006)(186003)(6506007)(8676002)(8936002)(26005)(38070700005)(5660300002)(7696005)(478600001)(52536014)(55016002)(110136005)(316002)(9686003)(71200400001)(83380400001)(33656002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cri0/QNbRI9lSYCcRimYRFw+mhowkotxcBG2Bp2XJui4wgCIknpJKeim+OAj?=
 =?us-ascii?Q?0jJZ9adfNjXcWe26cTPpS4bIA88XnEkHepmx9eahgeg0X8eW0HiIa1q2Gzzm?=
 =?us-ascii?Q?lseOIEFhRucxZH9hOlCmcxMemdYBaMFSq4PsiuTMsYBJcdfo6l3JKj+vMArF?=
 =?us-ascii?Q?kMMx5HiLRAhu3QZW/DLNZF+mFs9e6TPfORLS778SjN9aDdVOIj4x0s5Lp/3u?=
 =?us-ascii?Q?5fryzYgkxLggA7GlerK8YBiqxlglLv+QNi/H1kCkgNPKIsfE7HtStXIPKYiH?=
 =?us-ascii?Q?BK2SuO1C9571aQgldlBVyxtEi47pSs2xhmhTQav3EmXDK7eGL7GDSfnbud8c?=
 =?us-ascii?Q?6PdH5cuA0GN7WH+VKIc+IjoG6yjZBh7bDw/23fNzjygdwctBM/cr1rbLeXx2?=
 =?us-ascii?Q?KwxcdDUfvJiEDWY/kEhPjrApY5DuJMoa3sbqmGqsgM1ulRWh4IdGMjexxg/K?=
 =?us-ascii?Q?sTltHtLlSITSi9iQYaMHSM/i79Q0cbmOqJssCKYiWqJpp21hp/u4QpSWx0UP?=
 =?us-ascii?Q?AHR9ISA0x+RgSX0ewPKJgmC0dW0CJ1KOwQBvpjTHzw7R3/C0UACXlE/cSC8z?=
 =?us-ascii?Q?6l+3iw8mPuXdB9pj3fbk0fGMc6XXUWp8YDgvLqR4dClrH1+zDTjCH9trjeuq?=
 =?us-ascii?Q?/qBFai9k9wI78yDZHO7sEbs+4kijuXdyGuzPjDk9s68aGT6xPaPqcTji0C4a?=
 =?us-ascii?Q?CzAx6B3jXqiLJACngcgyIUxVV3oRLsGFx8JAH649cCE9ENXEdx4AL9OEzXaC?=
 =?us-ascii?Q?y4IHE3pJ2+GqAmhf1l7I2do2nEfdV3RqRoWPT0asIW4dNUcbRaUHx5wZUYal?=
 =?us-ascii?Q?J2zSrKuDORCkzN4GsNw6oKshFT6bWotfgS72N30TK31OFMCr9LJgS69acDWO?=
 =?us-ascii?Q?KWk2uRarbb4G9eVHjc/v1R81mR6/Yp/ztxspLwHDOXXGIR+UYo12TwTFahiG?=
 =?us-ascii?Q?/ksc3imVmFIkCRmWhBY5CNGsgL/YpYcvtvZVHJViK29thbF5jaf6eQVXdNA7?=
 =?us-ascii?Q?DYc1ukq382o6wSTOANwLSEqLwHPFq1yRynsrAC6PJv/ZeOnNEW8+wQhrL1PV?=
 =?us-ascii?Q?8R7SvGZ7zxZsB154aFBOH23oVNqgqaOolT7SdcbQ82fVTJUs0s1JaNz+J/VL?=
 =?us-ascii?Q?UBLAbM6JWayyAwszhf4+6Gyk4E5pTd7ZAwNHCnUm6V39jHadeow2i1ShtKKU?=
 =?us-ascii?Q?KTw91reYT78abpHSuKz+BrDci1O8tI9jDSXtTsLTcU/5lg8kdnrZMOf05b3J?=
 =?us-ascii?Q?lFFQyWdmGlQCi4t2PJwwOv08Xrg/wUVFo5qJVwmwGgRranbiXu8Mhg4rUxdQ?=
 =?us-ascii?Q?Qqsp5GdLWEu3aMefFaoffbX8?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7313c1e-4880-4a13-2342-08d9565ebe38
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 09:11:56.7422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bh/0XJOVMqHEOBDum77Yn9fHxQq1A7xUX1yDJqc9p5wTVrPk5mN4ln4w9c67UAbkUUiCMa5puaYKu88Wf+P6s3EXg1FGoQR3QJscsVU1wao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1280
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 01/12] ice: support basic
 E-Switch mode control
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Michal Swiatkowski
>Sent: Friday, June 25, 2021 8:15 AM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v3 01/12] ice: support basic E-
>Switch mode control
>
>Write set and get eswitch mode functions used by devlink ops. Use new pf
>struct member eswitch_mode to track current eswitch mode in driver.
>
>Changing eswitch mode is only allowed when there are no VFs created.
>
>Create new file for eswitch related code.
>
>Add config flag ICE_SWITCHDEV to allow user to choose if switchdev support
>should be enabled or disabled.
>
>Use case examples:
>- show current eswitch mode ('legacy' is the default one) [root@localhost]#
>devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode legacy
>
>- move to 'switchdev' mode
>[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode switchdev
>[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode switchdev
>
>- create 2 VFs
>[root@localhost]# echo 2 > /sys/class/net/ens4f1/device/sriov_numvfs
>
>- unsuccessful attempt to change eswitch mode while VFs are created
>[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
>devlink answers: Operation not supported
>
>- destroy VFs
>[root@localhost]# echo 0 > /sys/class/net/ens4f1/device/sriov_numvfs
>
>- restore 'legacy' mode
>[root@localhost]# devlink dev eswitch set pci/0000:03:00.1 mode legacy
>[root@localhost]# devlink dev eswitch show pci/0000:03:00.1
>pci/0000:03:00.1: mode legacy
>
>Co-developed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/Kconfig           | 14 +++++
> drivers/net/ethernet/intel/ice/Makefile      |  1 +
> drivers/net/ethernet/intel/ice/ice.h         |  1 +
> drivers/net/ethernet/intel/ice/ice_devlink.c |  3 +
>drivers/net/ethernet/intel/ice/ice_eswitch.c | 62 ++++++++++++++++++++
>drivers/net/ethernet/intel/ice/ice_eswitch.h | 34 +++++++++++
> 6 files changed, 115 insertions(+)
> create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.c
> create mode 100644 drivers/net/ethernet/intel/ice/ice_eswitch.h
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
