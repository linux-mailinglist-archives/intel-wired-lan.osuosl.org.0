Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D08A54A893
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Jun 2022 07:09:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 654D74151A;
	Tue, 14 Jun 2022 05:09:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fZtUCAQbrbgg; Tue, 14 Jun 2022 05:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A81BC4151E;
	Tue, 14 Jun 2022 05:08:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDC341BF317
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:08:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CB2CD60EC5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:08:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gP--YlvibAAb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Jun 2022 05:08:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D52A960BAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Jun 2022 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655183333; x=1686719333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=t22DpF+Ir/rf0FpIKeOMsViVR86fuPu6ak2nyoz77Os=;
 b=kApyMa0PlaO+rUvNeb6FUNf/3UkCINZT5xiSehjDwyraec6+WtEqYXbq
 g8BJYPbmrmRtPLCUHimBq/ulEALHtuj30heyXJEvaJxFuv4X65SYGyQem
 sFNYUS7IRojiVh4H8pn49MxN3NorNnNZ0uzxqMfpx4d0v/5Lkb52cEvk3
 YGb0lgE1SUc9mJN0/lw56lGRimT/dEVU+C+qu9fUYgaGuELHsEjJL9l6L
 LEZcY/Basc6/2jY4bdyqjPJgigUQuJ93hzLQLLbFfzTPlk4DmpmhX9ns3
 0xjBhBg8794vxKVia2c2t9w2c6h1eL2xA39YVliX+z6PGcbUqDwvLvtFD A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="267194091"
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="267194091"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2022 22:08:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,299,1647327600"; d="scan'208";a="640142356"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jun 2022 22:08:52 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 22:08:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 13 Jun 2022 22:08:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 13 Jun 2022 22:08:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 13 Jun 2022 22:08:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V+2o6rMCnJ8SNG6ULErAqBaDBUn0JpZx6SRsfNcKKIX9Vv91vk2dtiVwENIW6pyqzAYxQ/qnxApFMAzA7+bAh9r+LNoR1RKoX8VW774Tjhy6b7Ynx+FCXGz9YoCNfC36myTlvSPfWcwz9E3ekUnpRguXUUmoIZBJwgit4N7n5aEhA3/0VyjyJJnP3CFvSmtjsCmwxEInJsapfUc1GEa5rlYwWsAHt0Rf1iIWq8++XsGsfmcK+bc0Epyg47DGaA3g3cNrlg41vAdxeL6+umWImFVX/2jRjCC5rgUjFd7NqaLMZo3PBKZaVx1XjQl/p5Yx8T6K3zBG310vqvZFkrRf0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oc/AeMYXDMFKeN8v9FPy5sLJVlziOkxJ+BZtzz5UsX8=;
 b=JIfi6U2IQGFzsC3aJBSSmXOWdLi4dRYTi2iBumfcwiNkMjjEl8ljRKBHZFNnmbuwlNf6gKxNl9vd/q6iknSsR5l3R1vRKEJymO5to/Qz4S/lLipy+hQ0kYtj4cxD6sV0/p9YuM+NDvXHol5JvTvGJOXhK45RInDXaOkd2MSMFkt0NusmK/CNi7n0TQdIWhsaSSQ6bDgaa+JKGXXI5q9i/cTzPjmmMvVmy8wpbze8HI8N+Gsbfu3ZX3IqjC/4j6JZ3ulCVR5q1/MxgCZuK0VBiOFsmIVA9N4ZxiiJbV+gWuGxTKOSiYy7QYGhVERMF+v+bKhXPQeiJh0ET2mqjRnMsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM6PR11MB3690.namprd11.prod.outlook.com (2603:10b6:5:13d::32) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12; Tue, 14 Jun 2022 05:08:50 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::54be:fe05:7768:949c]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::54be:fe05:7768:949c%7]) with mapi id 15.20.5332.021; Tue, 14 Jun 2022
 05:08:50 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] ice: Fix memory corruption
 in VF driver
Thread-Index: AQHYdmjlciNVLCi5V0iYZ17rRL36fa1Oa/wA
Date: Tue, 14 Jun 2022 05:08:49 +0000
Message-ID: <DM8PR11MB5621E44D77F56997F9A0AE60ABAA9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220602100917.2733-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220602100917.2733-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82b9c0b8-9299-4d4d-ea07-08da4dc3f7ef
x-ms-traffictypediagnostic: DM6PR11MB3690:EE_
x-microsoft-antispam-prvs: <DM6PR11MB369046BA3FCDF9B02CC82CE6ABAA9@DM6PR11MB3690.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pfufsozs6BFvMUubU69G6LAbEyI8N+qOf0sCI2uoD8+eWZ+xjzH37D4GURm9xPMIzI8gu+6fnTOg9VXhXqiRkhAgg2YDyrk82vjToNrSxv13KK5s4eQHMRLcHOZBbm27fvOeBEDIS9ZD27MdBUlCqKaPL7/bvkeW7z/bMBlH+5Pe54SDKNynVLnzJUu6XZfge+9knEcxHF4ZrcIv6bchdxcFCi9S5B6y2o/83tt/Q4K9+gji1687E7UxX2Ob8YO4L1agcMAJaOKT3n+O0eeUwLZ2GA7QynGM4k/fMX4Qzl/VMy/gMSVWjgh3PH/jaj4nChGO+ZWaL9PeLq+rcg52g9jkTeJEoFwAh6EOrIBhlDBNIrYRnzSLtu+dQkDGHVLwgMmgvG/5RnseYqKihRm8eVsX3AU9uA23ZgXUoKWcGMPLq/YjTlRFGB2kUUIKCibPUeEZrt+zIDA52xPf7Xzf2ZGfpaXmlQ2LcNzZb757L166U734MnpYUbPXRKc795OZRfKaVuZqo3QpbVPgXAEVQ+kTJaEi/hDwt00vxsDGPSr6mbl9tv+U513VJ4fGnm/EbN7MT+UfQFe8SYXuOU6O5Qa5+M/v28Lhn/ZWUH6qmZYuG8re0UHn3HaTHz0v+zj99uEpiqNE5IoNJ2nJiEJq7Q8SFXjo0i6nQOff8y8Yx9tnBsUQqvLTTSOPXi5KnjVQL3XxBkpFh5boYKQw4DUHsw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(2906002)(508600001)(8936002)(186003)(71200400001)(122000001)(82960400001)(45080400002)(5660300002)(33656002)(83380400001)(66446008)(66476007)(4326008)(86362001)(66946007)(8676002)(64756008)(110136005)(54906003)(316002)(52536014)(9686003)(55016003)(26005)(38070700005)(7696005)(6506007)(53546011)(107886003)(76116006)(38100700002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T9DqyovupIT8uVNLvpB3vvcE+wSvBFiWtNiZE6h/Hus9wkthcdJ5smXlp4Fp?=
 =?us-ascii?Q?TwAh36Mto++/07h90WDoj1ydSmt5Hj2Eae5H87YlMrjoPoUQa7YOWuHW21Px?=
 =?us-ascii?Q?Iwxfh3QY54jNI+KmRPeaeovjVO1SC9g04gM8GX6/5bK0KJTMcRv7DhYiVaK6?=
 =?us-ascii?Q?dq0kGUbJL4m7Zh9A7mTXx0ImiA/dxNPnbXbJmudxrtEKxj+RCN6uXv/C2S3q?=
 =?us-ascii?Q?ghiaLopxV8OtfP9P15UryUgbYu5xUTSVpe3Pk9YIDw/10BnG9tQRtxorK2rN?=
 =?us-ascii?Q?tXbZLXivq1MufTWW8tmAKHRZCqCeN9112gqvkf86BOKKDtXNrdikyMZdT5Gx?=
 =?us-ascii?Q?JzXLlOUvqdd7SVMh5tiUUWMji0j2d1adKMWVP23ebp5JWtWPFpZzYvnDw694?=
 =?us-ascii?Q?RDQKzdcQYmIfBo6LN4jjThTIW1G6B6yMRCrY+o3zvRMJtaxmwet7NW29Lgc8?=
 =?us-ascii?Q?VtF2jM61jnWDWf7HhqS0sqZvaMO1WRL8GBuyi3IKoHGD6DQ38WI0eFhEkrRd?=
 =?us-ascii?Q?iIyhURr1Tb5GHpGYr1oNlLqiolbrbD8IWccDEx4oNVicj5ND0CErEE1jJRa2?=
 =?us-ascii?Q?0gqkt/qPquFGgOuJW4iqhv8HG1yCHIwyQ74I8Zs06Fm1hySbGNHO/St0P3Qm?=
 =?us-ascii?Q?u1AbtJIkHjy1kmcLAKUpJGNz6iPLqFDMJKKKMAoyctwLKkbg8h5T5Psejsh9?=
 =?us-ascii?Q?H896gYdhBlZkoJa5zLR4Ix51Bkb6ypgNqGHvetcTyhWgKzRpguFQAZvPQ/8O?=
 =?us-ascii?Q?/NIIdkyRzFACouNyE3z/X65A4diQA8OJTjUsJkD6u1LRmHZWxCDZ2PGMl/EM?=
 =?us-ascii?Q?EbHEgWw9nzpD2b75h48nYEi3PwiyJX3Hlhg+fu/4cMStO4czSVsuhGoZqZZH?=
 =?us-ascii?Q?tVZ0dLEk9ln7+zGKf38KxWztztp5mgvyvcbDoylWNq8SIzTLRqLDjHmpBWXj?=
 =?us-ascii?Q?ioRdNkb9+UerTO/IgVJPJQAo4bwETuoNUbcvAk1nsvMPM/KQpalwBSmD3rXU?=
 =?us-ascii?Q?AFndG3H03YszLXMfk0yArQc7dkyl1KigiHStCTf4TLVSqI9hGJhj2lvpVPpl?=
 =?us-ascii?Q?J/RgAHzmsxfmoyUCfJ7slR3yC2SaEoBW62lmWdKMc6JoNsyWhFMMoX/4hzXi?=
 =?us-ascii?Q?fD8a2epeHXsnkisx61UZhSAzUnbKfmmkISEmSENoxbjVZCxi52vdtnJ6G+V0?=
 =?us-ascii?Q?/d+a/A4ZEh6la7y7QtzwfHE71GKxD+fBO4axUR/yUtqsD9qh0JLFnx0eqIQ+?=
 =?us-ascii?Q?boo37VYyh3gLij5HW/D88MH9wMKm78SI+5uij2P5OFy7cZlH65/4T6IUl1Qw?=
 =?us-ascii?Q?OaL85v4aTs2cvIMlRVIRCLogLVXFOUptYJBM0fgmFm10HrykOMFTYTLjpktv?=
 =?us-ascii?Q?CXbeeIEDEK0I3VqR99L/9HzQPu6Hz5pKE2OG0bTErGT6P2iqO9g13IPQxhYN?=
 =?us-ascii?Q?w8rVJT0NcMh/EFfqwVII3wRh6+RldcLOmG+1lpFMp5enkz6p4jC9FqRyWQ/t?=
 =?us-ascii?Q?Tpt1/VB7stZwNca9j5B4PBgE6CfAlRV5Moo1o7odj+v5aBFa1rSr81U6/puP?=
 =?us-ascii?Q?sMoVdh35tyRSRZ3RVuK+LaW75z69rqbRubjQHw+qKGtb3KWdemqHX2Z48vmP?=
 =?us-ascii?Q?BkcnpiRq1fafeZOZ+kiB6n3VDls8I5tZRVctTNZ3ky0Eu6KtjxL7vc4w3pAm?=
 =?us-ascii?Q?Bbzj7rx03W1GydXiItqG4QJjqhZzDIcbYydeQnBMHJg1SO/Pv8rraLtpRMCS?=
 =?us-ascii?Q?+1uglMlakCYYNHtkUprkrwQSvQBStEU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82b9c0b8-9299-4d4d-ea07-08da4dc3f7ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 05:08:49.9840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cdvoXfPXzfWvwoWcwgN+ufPtIKrF7ajRODYM+mTFWQ45ct2xSRFrh/pPvp9A1v1AoMSsFMl6FfscXMyKiXJ84F8DBxT/bzb/KAweS5aV/vQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3690
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] ice: Fix memory corruption
 in VF driver
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>, "Patynowski,
 PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, June 2, 2022 12:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; Patynowski, PrzemyslawX
> <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] ice: Fix memory corruption in VF
> driver
> 
> From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
> 
> Disable VF's RX/TX queues, when it's disabled. VF can have queues enabled,
> when it requests a reset. If PF driver assumes that VF is disabled, while VF
> still has queues configured, VF may unmap DMA resources.
> In such scenario device still can map packets to memory, which ends up
> silently corrupting it.
> Previously, VF driver could experience memory corruption, which lead to
> crash:
> [ 5119.170157] BUG: unable to handle kernel paging request at
> 00001b9780003237 [ 5119.170166] PGD 0 P4D 0 [ 5119.170173] Oops: 0002
> [#1] PREEMPT_RT SMP PTI
> [ 5119.170181] CPU: 30 PID: 427592 Comm: kworker/u96:2 Kdump: loaded
> Tainted: G        W I      --------- -  - 4.18.0-372.9.1.rt7.166.el8.x86_64 #1
> [ 5119.170189] Hardware name: Dell Inc. PowerEdge R740/014X06, BIOS
> 2.3.10 08/15/2019 [ 5119.170193] Workqueue: iavf iavf_adminq_task [iavf] [
> 5119.170219] RIP: 0010:__page_frag_cache_drain+0x5/0x30
> [ 5119.170238] Code: 0f 0f b6 77 51 85 f6 74 07 31 d2 e9 05 df ff ff e9 90 fe ff
> ff 48 8b 05 49 db 33 01 eb b4 0f 1f 80 00 00 00 00 0f 1f 44 00 00 <f0> 29 77 34
> 74 01 c3 48 8b 07 f6 c4 80 74 0f 0f b6 77 51 85 f6 74 [ 5119.170244] RSP:
> 0018:ffffa43b0bdcfd78 EFLAGS: 00010282 [ 5119.170250] RAX:
> ffffffff896b3e40 RBX: ffff8fb282524000 RCX: 0000000000000002 [
> 5119.170254] RDX: 0000000049000000 RSI: 0000000000000000 RDI:
> 00001b9780003203 [ 5119.170259] RBP: ffff8fb248217b00 R08:
> 0000000000000022 R09: 0000000000000009 [ 5119.170262] R10:
> 2b849d6300000000 R11: 0000000000000020 R12: 0000000000000000 [
> 5119.170265] R13: 0000000000001000 R14: 0000000000000009 R15:
> 0000000000000000 [ 5119.170269] FS:  0000000000000000(0000)
> GS:ffff8fb1201c0000(0000) knlGS:0000000000000000 [ 5119.170274] CS:
> 0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [ 5119.170279] CR2:
> 00001b9780003237 CR3: 00000008f3e1a003 CR4: 00000000007726e0 [
> 5119.170283] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
> 0000000000000000 [ 5119.170286] DR3: 0000000000000000 DR6:
> 00000000fffe0ff0 DR7: 0000000000000400 [ 5119.170290] PKRU: 55555554 [
> 5119.170292] Call Trace:
> [ 5119.170298]  iavf_clean_rx_ring+0xad/0x110 [iavf] [ 5119.170324]
> iavf_free_rx_resources+0xe/0x50 [iavf] [ 5119.170342]
> iavf_free_all_rx_resources.part.51+0x30/0x40 [iavf] [ 5119.170358]
> iavf_virtchnl_completion+0xd8a/0x15b0 [iavf] [ 5119.170377]  ?
> iavf_clean_arq_element+0x210/0x280 [iavf] [ 5119.170397]
> iavf_adminq_task+0x126/0x2e0 [iavf] [ 5119.170416]
> process_one_work+0x18f/0x420 [ 5119.170429]  worker_thread+0x30/0x370
> [ 5119.170437]  ? process_one_work+0x420/0x420 [ 5119.170445]
> kthread+0x151/0x170 [ 5119.170452]  ? set_kthread_struct+0x40/0x40 [
> 5119.170460]  ret_from_fork+0x35/0x40 [ 5119.170477] Modules linked in:
> iavf sctp ip6_udp_tunnel udp_tunnel mlx4_en mlx4_core nfp tls vhost_net
> vhost vhost_iotlb tap tun xt_CHECKSUM ipt_MASQUERADE xt_conntrack
> ipt_REJECT nf_reject_ipv4 nft_compat nft_counter nft_chain_nat nf_nat
> nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables nfnetlink bridge stp llc
> rpcsec_gss_krb5 auth_rpcgss nfsv4 dns_resolver nfs lockd grace fscache
> sunrpc intel_rapl_msr iTCO_wdt iTCO_vendor_support dell_smbios
> wmi_bmof dell_wmi_descriptor dcdbas kvm_intel kvm irqbypass
> intel_rapl_common isst_if_common skx_edac irdma nfit libnvdimm
> x86_pkg_temp_thermal i40e intel_powerclamp coretemp crct10dif_pclmul
> crc32_pclmul ghash_clmulni_intel ib_uverbs rapl ipmi_ssif intel_cstate
> intel_uncore mei_me pcspkr acpi_ipmi ib_core mei lpc_ich i2c_i801 ipmi_si
> ipmi_devintf wmi ipmi_msghandler acpi_power_meter xfs libcrc32c sd_mod
> t10_pi sg mgag200 drm_kms_helper syscopyarea sysfillrect sysimgblt
> fb_sys_fops ice ahci drm libahci crc32c_intel libata tg3 megaraid_sas [
> 5119.170613]  i2c_algo_bit dm_mirror dm_region_hash dm_log dm_mod
> fuse [last unloaded: iavf] [ 5119.170627] CR2: 00001b9780003237
> 
> Fixes: ec4f5a436bdf ("ice: Check if VF is disabled for Opcode and other
> operations")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Co-developed-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Edit commit msg to have additional informations, add missing  fixes tag
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index cd8e6b5..7adf9dd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -504,6 +504,11 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
