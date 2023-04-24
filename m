Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F05C16EC66A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 24 Apr 2023 08:43:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 635FD4064C;
	Mon, 24 Apr 2023 06:43:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 635FD4064C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682318607;
	bh=F9TyA9yXFrDanyJXYE3XVSt5CJaj21e38zcMrdBrarQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lkLSquNIytyZRAnvWzUApYFrfCo8mHwGdxSe1sU6gfEopyFhEFS0ebq/Oefhfl73w
	 6pVT8Y0cwgoTYN/s6WfmukgTzTE35BHZKkcXCMJpX4sxpjqUGe7vUC3emRYTjKWQwr
	 UwQUJ7W78OhSuJHcY1CGYEVcPWCzYc+WeKiaZPyDCBJI2tPEMdOoK6fqd4vHB8fDsS
	 U6ZFw/ODEiFbAS/mzQCg5MXtmQjSMibi3hFpCrQ53EJaZACGB/edFJ+9llUh7s66Z9
	 odAHUSFTqan8+/XP8gI5X3CM1KGoREmAZ6wA1KmXHUxz+S8DsgIwirI1Zs0lMn1Grq
	 +mXZYjOCnu1Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZr_pmpVJBjn; Mon, 24 Apr 2023 06:43:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 570B840256;
	Mon, 24 Apr 2023 06:43:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 570B840256
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E461C1C2B82
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 06:43:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BB26C81D7D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 06:43:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB26C81D7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMkPGx9q-tBl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 24 Apr 2023 06:43:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1792081B83
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1792081B83
 for <intel-wired-lan@lists.osuosl.org>; Mon, 24 Apr 2023 06:43:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="325983720"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="325983720"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2023 23:43:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="670391222"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="670391222"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2023 23:43:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 23 Apr 2023 23:43:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Sun, 23 Apr 2023 23:43:18 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Sun, 23 Apr 2023 23:43:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Sun, 23 Apr 2023 23:43:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJBnuQBrZ4IZYne9mlMzAlNJEiKqwUcHw2S/9H7l06Qnl+DpujohfBmzdcPe6uvVoB/qMayftKrhubRGxzrKEgFhZZF/6pw/WT6P12CfJTGML3R6mtqBW/ibD0ipnciqMX54VtMkkfL51Pn9ZIm7hQcQtYg99iC/Z7Ji/sEVrj2E6WjamadF2g/2dL3DXikYoeZXlTPu2Vqouy7xV4kVIiBaAMdD1TWSOGFQ39GqAliGB2pJ+VbwR5bV6JPNLxRboxfyDgm0Yxc8YgHyRmIEWZ6r7Dj0/85SJ2X6yd0j1NRlWnslMtSLGUCwlKMhgdpTA8bFykebxXs5rvWvTRrOsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AEXUrMWiR4/R+kxLlycadueMRIz236IGRuKPhBaeq4k=;
 b=iQgkctqYi1Y7i7SfrR1TBBDa6qPqPBRaO1J83ZiyGlQKL/N6boecYa55NwjRP5RWvBqGgoY642olnGMkgU8/3tDIfn0eXos4dkAdaY567mbcBJ9BEKWKOcwHM4p0EJQ9urJJXYlFP4q63wnrX1p61qJbn7hGXvO6E+cFgjdonNd+0UppVftriTYAyIVUmxUzJ5qBLdfxk8cURxp9x8Lske0wbPrAR69S3qFjXFdUcvqBZXyQZYJtsP4w1l2t42nD7qyTVLCJEzB4dGJDjBHlUAf+LmqlJPQCR16Qyf8W0VDZ1qw0qHWy2pguSYXoWTK/6yTTHB5opXQjS4ihy0+eJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 06:43:17 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::4e56:57a:9d6d:476c]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::4e56:57a:9d6d:476c%2]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 06:43:17 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: define meta data
 to match in switch
Thread-Index: AQHZaXQFiolOAaaTRkSOINxU4IBCc686HP3w
Date: Mon, 24 Apr 2023 06:43:16 +0000
Message-ID: <PH0PR11MB5013DBE8C847748166431F4196679@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230407165219.2737504-1-michal.swiatkowski@linux.intel.com>
 <20230407165219.2737504-2-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20230407165219.2737504-2-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|SN7PR11MB7512:EE_
x-ms-office365-filtering-correlation-id: bfc51955-2664-4038-230e-08db448f2f73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J1joaaIyPaErD5jHYYoNiogKeGoGtsRxEZgAdg0QLGUqhYAcgGFsrlI2KSuJwMXJE1BXhtSujI8Gp7uzDdKH6BzVt7cuyoAhrEXSIRtStYtIk67B9MpFSnaP023Uef1hZkTNhOz79iIw9JTcvr5SS5CoZmDJCaf6RJXysCHkgJzZj66QyNC3TSTHAyy8NPVCg9xqVEGL4snXoCYUJxZwP+uRBFYcRmgrak1EBuRLDoIZ+Uu0AI6iTn5z1DuS2drNQHb7cwGFjyysoW8EXP0puPSCxnME5fPuwAtSsWZddQ6nAAMy8AFqr0UlLU2z/ZCs6n6uysXdjhhRHgSl1u1dJrrYo6eu6J/a2BrLQ5gDXz0jpuFLrQ76zjwk/fed3o6ILdJzCFVWmF0mK1GdabEiY/DLp6+87kYTe7D+6G2bA7aw35b8xbRVffOO3KG1CkYm9yC6Ws/UPrESrRZLlk8FqCB+8GXJPUFJDYA0TkSZiSwaNJpAK1j/RQUKHc7QFKIZy9aBQ4EilOHyHAFoUf+atBZGyx3I5jUHODpGMB7BzkM+VU5m33DBQV1j+Uh1b4oWgSruWJGC+CQio3g80QjQd0BQsftWUBvqcYSMzqbf25A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(366004)(376002)(346002)(396003)(451199021)(2906002)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(316002)(4326008)(52536014)(8676002)(8936002)(5660300002)(38070700005)(41300700001)(33656002)(86362001)(55016003)(9686003)(26005)(186003)(122000001)(71200400001)(53546011)(38100700002)(478600001)(7696005)(83380400001)(6506007)(110136005)(82960400001)(54906003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dDQc76Lav/AkVGQaqytXmYw3aCS4UAScvYHdBkKvAkjdqdYrFHxfXoo2VrUh?=
 =?us-ascii?Q?Lq4bN/YJKhdYa+V9mvZX5yRKHMI7BEPmH3EYVPxVbi4yHZLNjOo0lezVZqAx?=
 =?us-ascii?Q?leS/ZnZEJlolMZHJJu+991fpbt6EZGTM/SKp8gG5dRisGF0YZkvtlQAj4Yp3?=
 =?us-ascii?Q?3rPmJWvMMHfKhwKAGaAU7uM7USIFtpbjlNmRWWb7wZsh2Ly7VMbvIYxNRAPX?=
 =?us-ascii?Q?Vtac40OWpeCjUAqkoOljh1mQMTH2nhrczmldmTdPze6JVSJKQD/t31kqCE8S?=
 =?us-ascii?Q?Gjlu9JpVVf9/kW73L7ywx6b6HQr7W6iYQmbkxAqIki6/dbt97bP+RmemyFxJ?=
 =?us-ascii?Q?InHgqMWrsuUTKvbaTXQG0evu0o3frXrBJkfJn+ZOhLqcpabPZi7KLKnPIh/7?=
 =?us-ascii?Q?oqnIjBvKzr5S2AtMy8XJPTvzpm2PTwovBg3EM4WFKkvfgXvTbaVycSPbgsjm?=
 =?us-ascii?Q?cnYQ4E7EDL6WN1V9DhjQROZR0lSzrhmR2DZFI+/nFkUGFTuQi9ZCs/c88QIp?=
 =?us-ascii?Q?PovMyP/ZryD+jAdOr+1ei++LkB9+lo0aQChKFKI1tRzxhzfm03QnNHULS/Xb?=
 =?us-ascii?Q?6gsd2ACruLBnY9Ega5ftL2kyw3wNLTS/awnKo+OiZ0pxBdlekGHzWr+8UJAy?=
 =?us-ascii?Q?JTPa4pgOoXStNKx2acU1ZFnAsRkvTfArscrBlzr5lo2JeRM7Py5yJu5OFMf3?=
 =?us-ascii?Q?RWgw4UNmAYA9263jLUshqous9HAFR1cAMSK4CZWtiUPLxiwm3jkIANTXeQFT?=
 =?us-ascii?Q?hTEXrchAuan2Sxd2WmYPYYlWk7SLJgiw4GAjW0jM+Zurzq8sVZk3SRMjoOWz?=
 =?us-ascii?Q?QSSSmVrb9PR6qHrTCOGNeHgrYobsrV0nWNtIoNO3iOUNG8lDNNA6vGE3e4jH?=
 =?us-ascii?Q?u912K3BxBH87Ik9alv9zDkdg2WpyuDOOY6ijZLx7qVOCJGQRAPITjEUu6Aqr?=
 =?us-ascii?Q?pkq+Cj9Jt36hZdoKIkAcEW8pHLL0KY1UNjnQudpO1Y80+KsPOZet3tRl6vqO?=
 =?us-ascii?Q?evm2JlEb8cAFYo3PgjVlZlb6vCpM9ExbUf9L7SU7kLt96hnijgH0wG2qUMIx?=
 =?us-ascii?Q?THhx6mtcbe6fxf5uJIv6Fa3vrLNqah6+ZEkXggOw8ZbVzgns+1GqG3OG9d2e?=
 =?us-ascii?Q?WSGCmL1rfxI+j6yGjhbh67uDvpckLNUQaLplz2ydSG/RfYpf0RonxpcGOQm+?=
 =?us-ascii?Q?xLumw75nZZfBDtPGkvEhd2O1zbJn9VYmaoAyVJ1vDOwtaGc9Smn8GhhSjmO1?=
 =?us-ascii?Q?nB3f+EFPEcx8CLyAdXpIq9Qx8UBLh/jhlmSe9sMreaSdLRJiVVx3jvPaRvy+?=
 =?us-ascii?Q?9iZqfeQDM3bgHONariLAczAlB7XDuijRrYOtwihgdR8zurIRi3m/Z3gttK7a?=
 =?us-ascii?Q?tb2EwFNeZ4nMf0aFkXXP1bePoTg2XuKU5HoFcI9OWZaJgkDEJrcJQntASp8y?=
 =?us-ascii?Q?ENK/SAyJY+BiCVW/gLQRWvXUIsKRitWcYqDHAbwuCu17fBwY0tHUvmitqOjE?=
 =?us-ascii?Q?e5f0sZu9uCkPs2HfM5m+05amXBYhCzDWFa97Ux56FizDU2FdGbXlzUn+shpe?=
 =?us-ascii?Q?hxSIO3jruLYliP45BL2kLnxk/eCRv7CgvixqvX0QVdalKdYu1KKAXrCB9ZUu?=
 =?us-ascii?Q?uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfc51955-2664-4038-230e-08db448f2f73
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Apr 2023 06:43:17.0046 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Jc/+gSDs2/lPZh0+bklFpD+fXJwdW7Kto9uMviV2DRUwYgTpAzTrpcQfCpbWiSqc1mHVineygdO/uCaXu23/33ePAGCYEVgnqJcl9oCL9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682318600; x=1713854600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JiXwAWzRsW8qFDTm/8Gj750eGth0/MnmFdBiFCeJHso=;
 b=a1/HGE9OqLc1wTW57TURBLghqAH/mYfufB5CZrltUWShQsTk/vtRdG6D
 00SmSGI+GxkFjExMEsTPq4HgXuVQxlrbC2NWOyljsNO3gn95IsksMguy2
 QOUZ04H4wPIkYKGTMdIwfkZnN54LuErnGNs5t3lh6XcfieenOE+Y7q6xI
 lwSx0CcNv+yZ9WY8SzyQEVy2PboOoxknOFgwk2i7KUT8xFNMnZVl2782F
 OCVRIPRQF005Yb4Luk9wN8X5ehqVFEgu/1Xe5+mP3XIoGlolENVGMyWdY
 XnsF1BQMjtQu4XBmz0tZynxGaD63Tu3lA4Vzy4EB0QhtvNRbUmY1W8mei
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a1/HGE9O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: define meta data
 to match in switch
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
Cc: Simon Horman <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Swiatkowski
> Sent: Friday, April 7, 2023 10:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org; Simon Horman
> <simon.horman@corigine.com>
> Subject: [Intel-wired-lan] [PATCH net-next v4 1/5] ice: define meta data to
> match in switch
> 
> Add description for each meta data. Redefine tunnel mask to match only
> tunneled MAC and tunneled VLAN. It shouldn't try to match other flags
> (previously it was 0xff, it is redundant).
> 
> VLAN mask was 0xd000, change it to 0xf000. 4 last bits are flags depending
> on the same field in packets (VLAN tag). Because of that, It isn't harmful to
> match also on ITAG.
> 
> Group all MDID and MDID offsets into enums to keep things organized.
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> ---
>  .../ethernet/intel/ice/ice_protocol_type.h    | 186 +++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_switch.c   |  11 +-
>  .../net/ethernet/intel/ice/ice_vlan_mode.c    |   2 +-
>  3 files changed, 183 insertions(+), 16 deletions(-)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
