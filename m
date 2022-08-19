Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F56599788
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Aug 2022 10:49:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9486841A5A;
	Fri, 19 Aug 2022 08:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9486841A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660898965;
	bh=Rmdq0blwxFdRZr7imyIcc4lZ3Xb1RNzGHZ8ToNs/1u4=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=qa5ATYEQYPwlw2QcNAcX1QJK2KnTVXOelmPV1/s2iNO8y2vNWUEOmgj60encwRreJ
	 qW6r9r2FttS66NSM+pl3JovIFaMnwsIIsU+IGlnAlCGANYl7fZF3np5faeVcTNZDTj
	 CM0XELbMxf33jT6azEwTeqG+bQeNtwM9WenZaIyiqwQbKOdHYOk7C0nCJSi7zVHvUW
	 tEQOgQWwPfsICwyfvj3hCTrRSN27/DwjnDLdTmdcnsX6Hc3WrHftJ8qW84Cw25y9+e
	 FoszMUeWTRU3X+PXXPQiwl9uHSgPEv4YFDkqGMR73idkbpfpLAf3b4+ghofxPU5TW/
	 yVuBd2Jf9C0xg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 60-6qhug-wSz; Fri, 19 Aug 2022 08:49:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1FCFF4109F;
	Fri, 19 Aug 2022 08:49:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1FCFF4109F
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7361D1BF2CB
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:49:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5A0D160BBC
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:49:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A0D160BBC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4ONjx_uUwM30 for <intel-wired-lan@osuosl.org>;
 Fri, 19 Aug 2022 08:49:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECB6C60B51
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECB6C60B51
 for <intel-wired-lan@osuosl.org>; Fri, 19 Aug 2022 08:49:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="290536681"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="290536681"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2022 01:49:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="668497078"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 19 Aug 2022 01:49:14 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 01:49:13 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 19 Aug 2022 01:49:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 19 Aug 2022 01:49:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 19 Aug 2022 01:49:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GdlG4hhOoBRnr1BwUtM0k6CCQkoa1/80MR4kboscmE0DdjyPfoz+6OHxo+CI467bxPG4O17RKDSr1iVu1zA08QVzua2rMxON+XRmeBROzA58nIaxeAiDXVuY5uao3PCSwlV+5zknBBvKCjn5yRM+TsRanMbTeASk3AQYajUoU61EEWvjKYj+94hfSLu08YIM6O3zSeFesKBa+inc99rQ+IXyYdu00d0QcA465s/CWR+0z2XVVU16H7muaeIP2v0OFP2J2HQnSqPfxBgyT8WqJ+jdGDTHDYQuM0PmWyVeMSOrUJ3irRWBgSjNtq3whcN/fUMr1NicMdqwEqmn3im3iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GjmpoWq38vPDIQWI+vdxks/3QcX5PKE0hAYwUZc3WCk=;
 b=bT+fwKC9XdVdnlAdiu634k5fhdmpPTqa/cOj3+t9jKV9yhNwHYzxkJBjPKEHxu91Qr17atubZo0Ym4EbmDH2hStjVHHBaeIPfJvXrpRJv1yiJmQjB0jTvvZuLNgE7Q5PkDntj+seNnPPOn+DB//E2vS/UNvX7EgaYf6KBH1Pqc/jMGbZOGGxRwPDn6140jG0tODUwT3L8H0F9fCGL2Q4/XZxExJzNbIpHOzQzP7Y5zF5ZYOA+/S9oFeRzb0tGR57yyHf9i46Yq/mL3BUcHaesiqx9kjvmzEZdOwRZJLcVR9Say56Air5U4SNm41Ed5nwvUM6YkatE87vnG6HSac3jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by BY5PR11MB4452.namprd11.prod.outlook.com (2603:10b6:a03:1bf::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Fri, 19 Aug
 2022 08:49:11 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::bca1:115a:1523:fb82%7]) with mapi id 15.20.5504.028; Fri, 19 Aug 2022
 08:49:11 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH net-next v3] ice: Add support for ip TTL & ToS offload
Thread-Index: AdizqHS54yQr2zWORU2KN/3sWL6bXQ==
Date: Fri, 19 Aug 2022 08:49:11 +0000
Message-ID: <PH0PR11MB5013919E81C87B5CFD5EF262966C9@PH0PR11MB5013.namprd11.prod.outlook.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c867abd-0966-4e39-1b0c-08da81bfafef
x-ms-traffictypediagnostic: BY5PR11MB4452:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jXW8N7Y0yUFDZ8s14Tv3hgbQiS7pSfURymCYa8yFfU/WPdkzbyRDYS2e4Kj9xUOo9+iOiSWNrlUda6/EnhLn7uVwXM+O+aMb+c/TsBqAanrJZ4Gy/6xoUuQqzAqsurETzAAECkFbihpRozRUbdbbuY7rj7AvQl3eK7neZhYH0fZ3j54f8G9j9LedDAT5YOAyb2hh2AlijzmO/Th0yJUq0/2sIuoCIATlWcKG9ZixsM0fkHBFrbr2wQVoBDXAJF4m2eUnCqHtsPuNeY4ur753HCNmSbFB6dkMYR7FuICoXA8DL8oMqI+lAt63tf9L9FTNViXdLCOnIsGPj1KBhc7+gffiJeWiGSZJC9+M5Tc27EvpHi9E4+yoRzQHHMsJcrFz3olA/VrswMyB72GhQ1jOEWngfLnDYXbIKBmJJDwtMgk2ReqGBvQcWMlowDT1TXIqzHcvi6XGTCinw/b6ArcXB0qth1azm+2BqW3G6Kavxt4n9jJF1cE6zjCzz+S84v7XIEDARSpdLJ4QL0n9lKsw6TIkBFaoL5fRyvfZrT6dAnQGLdqSALfnerombVdGC28DRhZ5/a5m6U24AJgc+ida+Ap5wM4wxZQwXlxAIJDxX1hILtdczA+xPG5E8DxSEkrQdZmH3Z2gTql9LknumEmnOvCsXR5OpZRfMk5XRJmGOjMNUp06Mddqad2ZhI9JYzo0DPnJ4zg2g8hLy8I0q8ijTKBZ0aGG7THOloGuq5LmXxqSlIX/JSNpLu2Z7r9947isgfhmVyawlLigdtAJSVm1g+REKMJTYLnGb0J9x68rONQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(346002)(39860400002)(396003)(366004)(136003)(38070700005)(8936002)(55016003)(66446008)(83380400001)(8676002)(64756008)(71200400001)(76116006)(6916009)(316002)(66556008)(66946007)(66476007)(5660300002)(6506007)(86362001)(41300700001)(2906002)(52536014)(966005)(186003)(82960400001)(53546011)(38100700002)(7696005)(122000001)(478600001)(33656002)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LC6x4IJaL/rhmh7Uvxt0rtkt9RBDIj/Xuy8xfsRAPjONRn3VrnRJ4Yjo9Y5y?=
 =?us-ascii?Q?jEyifDWXwnEoayurdhs2DJei7HAuVL3WGhMFAxrdTnx4k8zJDkrYXQgbcP8U?=
 =?us-ascii?Q?5uqsN1b5Fqv9//5IeOcSRvzg0aV59LvgPv/Y8Eq7jOraMXC+Ixwgs6mVi6Pv?=
 =?us-ascii?Q?kPgw41M5pnCMxQDAV0URZiGhji29qZgEADBqsuaDCNZjZ9gUD28HwsLo2am4?=
 =?us-ascii?Q?n9N79R2HoPX4USJoyXruowGYEfjYl8OIhyv2EMP4vZtbWSROwIJSVseyiP6Z?=
 =?us-ascii?Q?FRbzDxTyBwJzvRk55ssYA+eEn+4AeNL/gTURdZ4t4PIKRw8EDMl7l8Awma7O?=
 =?us-ascii?Q?B2MtXo7jApejHUL9HcZLhlOZ+ze7wrfq7krQQTphX6ryjP3JA/BM4aFitBiX?=
 =?us-ascii?Q?mJXy24eX793R4LYlkcriyjHGrq1q/0DJ+wuWtS7HThMkvN6cnR33qCJLtqNE?=
 =?us-ascii?Q?kTMUZJAsUekwEDOuyFcIoJ7+sWbvl3UFKJdRq4FJYiRwKVE16CQy1HQDEixR?=
 =?us-ascii?Q?fgrVSe3R3ZvmYxSglsU3M0qqR+MvvrceQEIXl2dWITZoddvQeNuk9Q1WmyT4?=
 =?us-ascii?Q?oEm65rOys7y6bXGXI9tIFQxUbI22tWKZCbqh3GLlcYiUG7Rfp6T/nE5A2JIg?=
 =?us-ascii?Q?Hx26A45IRlruyI86G9jmT2jXeopYpDjbpi59aovsfO2PW4NsHb6AU2hoPHX4?=
 =?us-ascii?Q?zthhbpR5ZB/HNZeNRJAxeQ5oIaFrNFZEkV8FaI4L3sLtAqGmGOHfcbLjWrqm?=
 =?us-ascii?Q?gZ5MH981DZPUsKONJRiKktsiVv39wQBnBp6TWVKJGsyLs9dmZdYXAiZ4DRvc?=
 =?us-ascii?Q?+cLfQDhbG4Um4nMNMhDwJeEQcf3r1EyMlmToHKMAQBRbzs+doDyAaKZo+6RH?=
 =?us-ascii?Q?+7Nt9SXkpOzkQLY3CeLlfgEeM/KnyVzwaQNrAzZwkYMN7pIdMy8abNqvULJP?=
 =?us-ascii?Q?NH2ZJqXvldQJdb1zx83ogFMADSAGPLmxYJiMNUI4pZ1+Z04FWh7bdwN+zrX3?=
 =?us-ascii?Q?the+zj3cLXR76ISZn9MMFieOeSW2xjEVmGh0BzcUoED6cr37Vkj2BDh56cHk?=
 =?us-ascii?Q?T+eZPF/Etr8CoWBMlTX3SFJmI4FvcLIW0nzO9v0kgye70LTDRt+IW2abNgBe?=
 =?us-ascii?Q?mArUo+roLl3lX1hBEkVb1gpv5E38tfZMiAWQGUNuQ7Ls3MsNBT8V+hn6bWpZ?=
 =?us-ascii?Q?g+YZFjKwsdYg9G8XsZVgHDWyFufms2oC6k0WEZm2fGBISkklfz84m8UKbcoU?=
 =?us-ascii?Q?BoIK52sEpHWfcBmCN4LKGYS5KwVYxo71pSXZN3hAyxBkGY0nGNqBIoP3uMmi?=
 =?us-ascii?Q?9MZttc3YlNLGTkho1R2g4xjCBtDImM/ROw1YeFPg0K2fgq0qFZMBO10Z5Xii?=
 =?us-ascii?Q?sKYc0OT2ZxbbA7V0EmfZCI1x5Nx063l4ezP03pO7lZwh6ri8kF5sApNa1CMo?=
 =?us-ascii?Q?sYZ682QEu6qZypDRdKcsziCySkfUmCgbLay6sMxPAfv6k2qlaFSbaygNz/X8?=
 =?us-ascii?Q?3cr8EEGGIcmN2lbmfe0svfOX1ScJ2LhIiT8OO5e3wtshYGl+xrqWrwpNeHRu?=
 =?us-ascii?Q?B+vuiOAlZ03VEFfClCgnQTXbWFwNkQAHhEL2YCDFQ0dIrNfZmbnpGvtiW7xB?=
 =?us-ascii?Q?TA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c867abd-0966-4e39-1b0c-08da81bfafef
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2022 08:49:11.6141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u4Reo7xPQg5nTWqiQKHVzBi8Dw2XdqCi5WiauRDhPgGAGJEfxpeFpza5mS7M1JvvejApyKk1RT9KvTaQniHiF1RIHKocPbzBPdZp6J9sJKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4452
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660898957; x=1692434957;
 h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=faO/KRrz93RLrWAuMJZ2Ns6zQ2vbafCx8tNV9qPqF5U=;
 b=LS7csVncstCSD/K5LohLqt459+hGYvnvn10OYDvGOuHpNprg6cbt9D/0
 iNpL4FZ7ZC70hRRz3sS6DtysjYyCKzdlkmWw9YyosxdSOkyZ4LFvuIXdu
 CZyYPl587VzsRFsopj4yAd4H7jOn2gPVk3Sc3ChGa+xeRenH8pkgI0NU3
 uzLp3QzgGAOEmMKl7dtuRBnreJSuppA2ZCUivI3kz9jOzX6ZMAPJQ6nYd
 UFFbUtX+YW/78TcR8qk1X2z4Rm0zlSBQ/hGLd1jK+hv6VTacHpkJBEj52
 I1GIWB90/kGPhqXh++YanhLAEcJEt+b7+TcwZ+eoZfQIfqkeoxCUaRyrT
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LS7csVnc
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3] ice: Add support for ip
 TTL & ToS offload
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

Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> intel-wired-lan-request@osuosl.org
> Sent: Friday, July 29, 2022 6:37 PM
> To: intel-wired-lan@osuosl.org
> Subject: Intel-wired-lan Digest, Vol 381, Issue 25
> 
> Send Intel-wired-lan mailing list submissions to
> 	intel-wired-lan@osuosl.org
> 
> To subscribe or unsubscribe via the World Wide Web, visit
> 	https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> or, via email, send a message with subject or body 'help' to
> 	intel-wired-lan-request@osuosl.org
> 
> You can reach the person managing the list at
> 	intel-wired-lan-owner@osuosl.org
> 
> When replying, please edit your Subject line so it is more specific than "Re:
> Contents of Intel-wired-lan digest..."
> 
> 
> Today's Topics:
> 
>    1. Re: [PATCH net-next v2] ice: Add support for ip TTL & ToS
>       offload (Marcin Szycik)
>    2. [PATCH net-next v3] ice: Add support for ip TTL & ToS offload
>       (Marcin Szycik)
>    3. Re: [PATCH net v1 1/3] ice: Fix double VLAN error when
>       entering promisc mode (Siwik, Grzegorz)
> 
> 
> ----------------------------------------------------------------------
> 
> Message: 1
> Date: Fri, 29 Jul 2022 10:40:34 +0200
> From: Marcin Szycik <marcin.szycik@linux.intel.com>
> To: Tony Nguyen <anthony.l.nguyen@intel.com>,
> 	intel-wired-lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: Add support
> 	for ip TTL & ToS offload
> Message-ID: <8e65876e-4168-e5bb-813c-3bba478a11fb@linux.intel.com>
> Content-Type: text/plain; charset=UTF-8
> 
> 
> 
> On 28-Jul-22 18:14, Tony Nguyen wrote:
> > On 7/6/2022 9:26 AM, Marcin Szycik wrote:
> >> Add support for parsing TTL and ToS (Hop Limit and Traffic Class) tc
> >> fields and matching on those fields in filters. Incomplete part of
> >> implementation was already in place (getting enc_ip and enc_tos from
> >> flow_match_ip and writing them to filter header).
> >>
> >> Note: matching on ipv6 ip_ttl, enc_ttl and enc_tos is currently not
> >> supported by the DDP package.
> >>
> >> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> >> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >> ---
> >
> > <snip>
> >

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
