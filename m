Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D10AD85F921
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 14:05:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E6E441B6B;
	Thu, 22 Feb 2024 13:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhTOYaBYd4z0; Thu, 22 Feb 2024 13:05:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 87CC441BA7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708607140;
	bh=6ItgiiCk5XwT1ONVv/XbZkjQ0D1BPv4SbRptPcdT2Gk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rDmam2dzRnCwAMWonDKtkLymGZ6epQz0YSiO2C1rMiRIiblldaQvJ4GMpAUOBh2Y7
	 pBM9t4pb7zTIUO93uKGOx40IWdoukJS2w3dX0rdT6UiEdcIsM8kcfp9qeHG37OtCPX
	 2vLRZZsqPNMc64Bx0q72ZtyTcv2X3TDmmlAH4zFPa7q1vvU14hDd0yREDDvd9pYKVr
	 f7lNCkTg+hI9Mqk4xZR3dm89hg1aBheECn3GO/+DHfw/G3X3ZuwfQbNSQY00bW1pBg
	 cusCZbvopHuJdnHdE1HL6CenHMEBKQOMbx+b/bmj8dRrUftxX4uSd36hCic0MxNV5a
	 S6TwPjAYyCUUw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87CC441BA7;
	Thu, 22 Feb 2024 13:05:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DA9471BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:05:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C5DC18211E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:05:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cgbjxKtY6PkI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 13:05:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=rafal.romanowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A0E8081E97
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A0E8081E97
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A0E8081E97
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 13:05:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="3325118"
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; 
   d="scan'208";a="3325118"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 05:05:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,177,1705392000"; d="scan'208";a="10123144"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 05:05:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 05:05:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 05:05:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 05:05:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3an5/M6p9SpvDueTdcgn9O6ZWVAEbTvWmYtBFiWbgDTF8MuGjUcylf+O+45pRLLcJiHkcSOsQF18/qX/hztlegliALafHvVd2NMp/yVfUJddPwIf6hG6VamTdQ2gKeXHgjzj10T4pYCDcQngX29SG5L6uSTtaoZaFjEAIJWTu9a+whBRaqE5E5WlkscYNYa1K5+qPdTmk6WBNDq+rzsEo7tXyAE+525CCvR+3KugRmCRHwgk/kVw1hMXyMvKYb45+QFtTjCqvTh32DyR6qiioEeJu50vlJB9ZY9kyTpztLps00lOfC1RZA4wgUWkb1mz+eNEua9nYn8Y03QPhayYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6ItgiiCk5XwT1ONVv/XbZkjQ0D1BPv4SbRptPcdT2Gk=;
 b=Gp12B7nUGIKttZkt0cFE/zUs8IDDsNWK2RB2PiAkTIzbT2nUKEwS6VnhZRk1ZrytWhXkRCbCvaXLYKoBCNklW6dngQTpa7phKDiqinSshG5mTlGgwLgJ6kwNhToUWMfxkDeEt8znwf8bqHq13knYqI080ngr2HXVKIL0qOdE1AiiQ3ovJuYxp1NhnT/XRgPs2yXrzTOcfY4cTpIa3MsfklxrcXMs4xU4DrkOWvI2Cdd0HHvrROR3Ux46CXY4yg7lC9YpOAtDq9TGPVvjNS01NLx+DZam+DKfS+nbbEq4r+9eNMt//NGc+z6TEpWFyf0bXaFm3tjMOP4+Aa9JEaTr5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com (2603:10b6:a03:428::13)
 by CYXPR11MB8661.namprd11.prod.outlook.com (2603:10b6:930:e4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Thu, 22 Feb
 2024 13:05:32 +0000
Received: from SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08]) by SJ0PR11MB5865.namprd11.prod.outlook.com
 ([fe80::1859:eed7:cd98:cc08%7]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 13:05:31 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: Simon Horman <horms@kernel.org>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
Thread-Index: AQHaXG29SyTFodHyjUK4Prl1vQuatbERcWYAgAT1KIA=
Date: Thu, 22 Feb 2024 13:05:31 +0000
Message-ID: <SJ0PR11MB586564A441B259DC44D1F6498F562@SJ0PR11MB5865.namprd11.prod.outlook.com>
References: <20240210220109.3179408-1-jesse.brandeburg@intel.com>
 <20240210220109.3179408-3-jesse.brandeburg@intel.com>
 <20240219092216.GT40273@kernel.org>
In-Reply-To: <20240219092216.GT40273@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5865:EE_|CYXPR11MB8661:EE_
x-ms-office365-filtering-correlation-id: a38720f7-0703-4684-e5d5-08dc33a6f352
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f0z8375Hc+O67OloxLnhqcVU3Pgqu4GH/x8+5U7l1NOzYLUb/54RLaofvWe/LmX2Pe2xo7bu76OugVOoyepkCruMuQjWCX0YqodUJ4Yvx8IgM3dcX5XwD3M1GRH5v0EIN5+B1M59ACb9dAAYMJDgqrdxdV7BB0Wga5cQQLrxgG/8b7WHWWWasvafLMD9GLbnlkDqOEJvZH35+zm+bsRjWrAhwuFD1CAz7mWt2+lkSZ0YOQPkE4py3DN9ATzEt4O1YfBlGNlhHhrZjT9RV30D0p4Wz/yipuLIaZh0vK6dx1ISUjq7ZCzH6yoOZxEZDgUTPsSrVTNwkUwK6tXW/an3Y9L5XBR8BSrOGVeBvw320X0Ys1lrQGr9DYVeDE8NaDavbtItd6oD/EoG4GtXHV7YEuW3lXJ9fkeRYz30PpYAvsA9Usk/nVs6N/QXeTnwxfVvyK9P152oCwyPteSlLiWbfGFDWKc7TqPkS3HLuUgcqHJxw9bX/ua2/UoM+r5JxkuPKODHVpqnoqa2rhJlyULHza5rkpJH2/3L+mtqJycXENS4Z/GisciA1WA1wHFIid4yr0IPrscmHuPVjSSs3e529OgiD64BN4qEi1abAbXExpUjhDUJeh0Spsys55TPU7aY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5865.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Y6tvqEioitieY4nN2zqgfoqscw/UPkIPcU9CDiZfHMZ4HJnB7/z/oAIMPaBI?=
 =?us-ascii?Q?Fd+wo0u8seH241oDqfagLkKY9xmHtbBsdC8tnDFNdOFFUBvk68aofYwAncN4?=
 =?us-ascii?Q?34T/GDtPHkgDP14tWzaAf7W7FjuFsB9MQtaezaMhq5gKRncIGwhnvcY0Y32y?=
 =?us-ascii?Q?IhiBJs6el+YCTNkc5Ir3HmR8xAYU/aJQD3h5JTJ0AcITUuOWxE7P/gCw1HVS?=
 =?us-ascii?Q?4F7Y3Q92jvjCO1dNdJ+aW9trt4VxwtU7bzSO60sM8NGzHUb2csjUWMzE78Et?=
 =?us-ascii?Q?Be+GhP7ecETPr29AAOK5iAPkMV+TYL/Ww1xr10f6Hv7RhZc3Lig0Y9EAYL2z?=
 =?us-ascii?Q?wxkviwqbd0OfhSlfdULCk97DtHEzI0d0GkfS8EKggGWgTNWcc7kJIIpQGAle?=
 =?us-ascii?Q?GRm4Tgak6Pdq/pst/5JJzwrNzLhgl9svsQlUrySevUacjKZ8iJj9aiQy3yye?=
 =?us-ascii?Q?53obPoU69biI79LaqiVmXM+yzZTl2e3Mq+Ta7oWxx9tslAJaHdOqyy5zz2Ms?=
 =?us-ascii?Q?e2AyA/62+2zL1ZIb7AvWjxGTajjdDdskNtiXoOsipuxEm0txI7QZ2mPifCvZ?=
 =?us-ascii?Q?MMNr055am87Fc2kLf0HrigMgREzZGCPBG2LGKUw3NEfAK/IUUySnC6JxJOP2?=
 =?us-ascii?Q?y+cyjx4/exmkxeQZC5/j67+e88km6X4gOG5oc/hHqkQVqxFe7CYzbsJw0w/v?=
 =?us-ascii?Q?0uNEZMniW3jpwbHKNyEyYmW4sHiuPS0CQkprZ8ADt2SLMHgIaNNNsLvsR7sb?=
 =?us-ascii?Q?CU75GJxqm9zPEQzM7nCd3LAHEe4moZqw8hSrLy28Qsi7k6VdXmW2IzHENxrS?=
 =?us-ascii?Q?ql69WtVluJJHaseER//9ISd9G8tKlNoYXAMAb3kK+/KFgBAgUTSMOB3DCeGt?=
 =?us-ascii?Q?OdOGGEcEJow14S0jTLAgVRUnuaPPRWcqap5nDKUci/8Ru2Tf19UoglGoanyU?=
 =?us-ascii?Q?oOSF+cOL0HtMx5JFbseNQG1Kp2whei14QGJOlRd+XsmpwMniMyBfxg/dH0pT?=
 =?us-ascii?Q?oGEtF/VRNuJI1UOvujs1UvYysLdf3qd/9sRdMOnoSLCkyGZdqBiwm6tXY664?=
 =?us-ascii?Q?nElP6bjTtIDT/DqVqsQJy9xy6M/VRGO0DmQ3+GykCLDRvMDEp13Y+7ek8jLN?=
 =?us-ascii?Q?tT+Gar7oWWd4GZ/P3/uQ5m1iqMUloQ4mh/THqiGz2UT4VKjPZusVR4jZyKDf?=
 =?us-ascii?Q?JjXl5andNtRchg9ljCiiUNk2cAlGWQN3CQ8ynirWG7eJ1+KHGmwVjD3bARGo?=
 =?us-ascii?Q?mKL+kMdvu8c2f4SqFJuqI8FajCwt7h4uqSph1ox8/4yOAQjqm0hUcj7v71EU?=
 =?us-ascii?Q?qie3yeuRhuAsqETfXmR8qISO0stRJyOr3y5+rSw0ZEE8i0NpOMfNk3Eqftir?=
 =?us-ascii?Q?Q+ws9YH7wZmkSjDnheLZQFvrJ9+KkzBrKCOqSCf4m/tqKnYTkHlll7kP+V0U?=
 =?us-ascii?Q?uxKQx3K7EDjjpkM9b2ywA6cwGWOwKycRv96TsGfojgt5JoWeSaeLcBOm7gu6?=
 =?us-ascii?Q?pb9lhIHy1xxlLtn9OuqlT9qBL7QfLwZsFXN0AorqNiornN5ugIZVXGfzDm9s?=
 =?us-ascii?Q?faiXd0dzmQYk8D+xac9xBV7U9xY0jL0dtJWsa0lS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5865.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a38720f7-0703-4684-e5d5-08dc33a6f352
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 13:05:31.9507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /D5zTQsa7w5jv+v23vXwH5o5Fn1v7HTMh7dSErZH4G/b02FRjGbiDDWZ+UUXtw7LuxlmtNjPNkdU/Sg0Orown0ZQnHatVCv2ekWmC83P3+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8661
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708607137; x=1740143137;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6ItgiiCk5XwT1ONVv/XbZkjQ0D1BPv4SbRptPcdT2Gk=;
 b=CMkJTN1PWLegfmYZsndq+Z9yES80beEH/vNKOeNFb52FX3z4/GNZtvT4
 WifcRtEWIVttWk99N2gzzSaxmfbSn7M90QLhXmjSwmVTTVz5+5om9d/CP
 /N3uucP/MDeSADXmsc3/qcGIiQ7ZCyDdmARBKAHgY9RgnUnVEbcl88Ux1
 6FoHoQ6Jg9eRsXhmTpNitqmHCQGZL0Ywoq5YW47ExvmZfHwclrEDZPM/h
 IbHZsgkXFykrwQvDB1ZgiFmwn6oaxPC8/DgqtzCxESX4YLyVd8kggTi5r
 ssI62kidxbGnBuYtlHT0lW4HV0crI2oDJ92bS5kJS+M6i6BSnzENeNi+W
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=CMkJTN1P
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implement
 modern PM ops declarations
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Brady,
 Alan" <alan.brady@intel.com>, Jakub Kicinski <kuba@kernel.org>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: Monday, February 19, 2024 10:22 AM
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Cc: netdev@vger.kernel.org; Eric Dumazet <edumazet@google.com>; Nguyen,
> Anthony L <anthony.l.nguyen@intel.com>; Brady, Alan
> <alan.brady@intel.com>; Jakub Kicinski <kuba@kernel.org>; intel-wired-
> lan@lists.osuosl.org; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/2] net: intel: implem=
ent
> modern PM ops declarations
>=20
> On Sat, Feb 10, 2024 at 02:01:09PM -0800, Jesse Brandeburg wrote:
> > Switch the Intel networking drivers to use the new power management
> > ops declaration formats and macros, which allows us to drop
> > __maybe_unused, as well as a bunch of ifdef checking CONFIG_PM.
> >
> > This is safe to do because the compiler drops the unused functions,
> > verified by checking for any of the power management function symbols
> > being present in System.map for a build without CONFIG_PM.
> >
> > If a driver has runtime PM, define the ops with pm_ptr(), and if the
> > driver has Simple PM, use pm_sleep_ptr(), as well as the new versions
> > of the macros for declaring the members of the pm_ops structs.
> >
> > Checked with network-enabled allnoconfig, allyesconfig, allmodconfig
> > on x64_64.
> >
> > Reviewed-by: Alan Brady <alan.brady@intel.com>
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>=20
> Reviewed-by: Simon Horman <horms@kernel.org>

Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


