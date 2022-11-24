Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C59637794
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Nov 2022 12:23:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49BC480C65;
	Thu, 24 Nov 2022 11:23:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49BC480C65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669288999;
	bh=6F63CS2IOj8OaB0uCbk085s1JQvAZh85lngHhgh4UAA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=madvBWjGkgYIzZ6S6Ki3Rh+NbXTLdrP0HWwJCesoDE/UyelWreI1Hgcip14CrrgCa
	 7jQcHHDuhJNos2cKcQli5hQ2bguK3aWijP/hukY6TjfjNoWyUGrFjbn30yVr2LfMLf
	 n7gqhFM/BkW5LHEIqcGgyYcqQ7zWRrXbTJUKZ/BMMgKU2OBzKYMTm54BsXXe3+JvoW
	 gH3uGluxUGv/Tj7xucwVhabqQzIoxB0axOuPSHlAmTPw1AGP2LVAEDamifyLrzca2l
	 jQsnZl7LZNMXYvKx+YeYZaluCMVtsgkrzA8EURw84mxAA6RTlT9q49BHHLDu9duur5
	 TrgW+ran1Jg3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwzorQsWG_PM; Thu, 24 Nov 2022 11:23:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4ED7B80DB9;
	Thu, 24 Nov 2022 11:23:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4ED7B80DB9
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 324BD1BF48C
 for <intel-wired-lan@osuosl.org>; Thu, 24 Nov 2022 11:23:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 196E060D87
 for <intel-wired-lan@osuosl.org>; Thu, 24 Nov 2022 11:23:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 196E060D87
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fR3xGbISvMvd for <intel-wired-lan@osuosl.org>;
 Thu, 24 Nov 2022 11:23:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5880A60D7F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5880A60D7F
 for <intel-wired-lan@osuosl.org>; Thu, 24 Nov 2022 11:23:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="311917692"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="311917692"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 03:23:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="644461508"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="644461508"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 24 Nov 2022 03:23:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 03:23:11 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 24 Nov 2022 03:23:11 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 24 Nov 2022 03:23:11 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 24 Nov 2022 03:23:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vf3HNX7HjVwjCht1t6FoPnkVMszee0wdyGu1oS6uUYEhJOa2FLFIYaVcafD2L45GHESUIsyg3iVNwY+pop4eRHF6Moi6ipHlGuNp9kSY8+sIAZw51xBt3cfBVndtlpFgelyX7fMyx1Y7qvXX/3Imcw2ffvC3LzOWZOFna+VbZi2rRk+o3jDLK4X6RPDmBU6PCEdVDngMTBuEaAroHmNzd7jvJiWkVZryMyb4n0Hjj6jMfTopHZoQ6jlvH1Vegvk4GIEHkcAnoYhZTSOq6KQa/bx4mm5QGnVphQfPeHnboj0OsQBFpaUcQt8kvVzZ7GGDG90044YLBuVa1owOErZf/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aCag794uTT6R8hAOdTXl/w+cMHUBpSb9hqJWaKCvZi8=;
 b=ALfLJJaDXnu1XvVuBKSG4neVXes0fFh+RG94ygX+bsFJFIjWMVxdFeQKlh0KGj7IVZUWJPoDkUxP8BpGMnDxYS+XHQW4BSaGudZfmgz8pE8qOL8ia9eF/oYifegYsjbPLY9AOig2S6CJr0LzmkY/GGz/9VJIw9U5P5X3cWzzxvqlitDFM4UkfUUY1komTwt3yFiBqU5Mh0bmhLgv4CH2R1dYinN0/E6HbuQMqekMgdBxWquxbY9df/LDNsitzqeLvHXROyz9pyR1hrVjZkBMBn/ro5sOMiC8cxbOKHy2hw/Y1JaDgGnfiZB2JgyL15u8Uh5yozKqfFGQWAe0lkCu7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by SN7PR11MB7467.namprd11.prod.outlook.com (2603:10b6:806:34f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.17; Thu, 24 Nov
 2022 11:23:09 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%5]) with mapi id 15.20.5857.018; Thu, 24 Nov 2022
 11:23:09 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: remove redundant
 non-null check in ice_setup_pf_sw()
Thread-Index: AQHY+dhigg66v4Ke10eeC8ag9Xa5oa5N+m4g
Date: Thu, 24 Nov 2022 11:23:08 +0000
Message-ID: <BYAPR11MB336768834D382B005434CFB0FC0F9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221116122032.969666-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20221116122032.969666-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|SN7PR11MB7467:EE_
x-ms-office365-filtering-correlation-id: 4c7fd60c-329b-4813-4fba-08dace0e43e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 19S+IqkN8BhpatoYilZYbDh7A211E+O2/ClRmrnVdOH4qZpMT6yzA7EvnEX4VLa3wG+4oKAV6b8Xj+9QbWGljgsyIY5nUnvJO9sZpxtyAKcnnRgwdjgbDfNjMbtVl3BCimUS975W5aDBQO4YiX56eT8EMfVyZ5KxDw5Yq7iAO5ZSko/zhx4Niqd8lITWtzA7ipSwMaznoE0vjQLnp/LzA9Uul9ee2jxKQ04xW3jjLshuIE1PxubCF/H19GRrrcVux0eCSlQ/O7P4lUjgLrnRqfmPHrrorSrwUpDzWzzgeBaTDRAA21ejvqBf5/R37Yy5FSOW30yDZL+F6ZW2WkPOLCmYsspmo8fNPh8O+GPxZLB+T3q26kCEtdfC8UQkCFHjbnN7oA50w8bgaHbkcf+/EFLqdlN22oI3Y51Sv3ojAwqo1k+p20aloz+VSaRw+ri2ksbA8gUg70mjaBneq+537EkaOMYYjIz7CVLryDUt9EP8QHo5NuZIlPeg2P9oc8KyWSQ/jl3O1Til+cPPjfObKl2lhwmSfUojiC3n9z1FrKO2Z+y3No8hqosk+scyzpewS7oxpY2TOfilx6YIv+HeGqVakGDcE8EyPtw4tL0asxDPL+JltliWeA0OR4EqUqY6uozwfBLxO1rg2oZvdRoaP8Ni7xQ3x1nxglq1M8WHjTjQN1l3wMlWw8CScJNHe/DoXLFj14/ZWZYPVNfUv9TxWg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(136003)(366004)(346002)(39860400002)(451199015)(38100700002)(5660300002)(52536014)(54906003)(33656002)(82960400001)(41300700001)(86362001)(38070700005)(122000001)(83380400001)(55016003)(53546011)(71200400001)(6506007)(55236004)(9686003)(26005)(478600001)(7696005)(110136005)(107886003)(4326008)(66476007)(66556008)(8936002)(64756008)(4744005)(186003)(66446008)(8676002)(66946007)(2906002)(316002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?d4xePaixeCWculI/9okr/CM4rV/O4QhjH3Lo3Pw0uJnpSdjHhgXMtJQrHIpc?=
 =?us-ascii?Q?hfOBxOzvfuNJdz97jXWE6Iyg7/J1+Nuq5UmcbzxwoDRuQc7F4StLIWcnaoQd?=
 =?us-ascii?Q?V6zmSpcYd8PpABZ2EtQtRhoI8OwzMr60eIaDQSslb9W0DT9zW8kx0GBmyHuR?=
 =?us-ascii?Q?3g+kHySqqDyREPXTBPq1bkRczxKsV4RusEZAJ82M8CgIZXyePi32zr5Km420?=
 =?us-ascii?Q?Oly2FZBIkDN7cSnvOPjiWFSKiJJVIFiyeAOSuePfnmzAA069mdKK5Nhq73uS?=
 =?us-ascii?Q?D2J5dN+d7IXWaBXUCH9jDZtxTC4uC8HK1wF/EoNHhM+OnRUxoD8tBjgyhjMI?=
 =?us-ascii?Q?7rFbi2mr28fpLCA41xqiSVyuIks4V5Oaf5AbYImsAzoF0UZlKASDxHY6CODH?=
 =?us-ascii?Q?PFc6ggBcVhaGOngzGmPBan6SymDC39QeravDwB7y2X82dE4uF1cSbborZrXx?=
 =?us-ascii?Q?ZK4W6DIZgNSHQUHlIyi1nrxliyey7h/YS0wqHY0fYWJ5RbPaDjbIuc8SHQCF?=
 =?us-ascii?Q?/WRn21/0tVX5G+0BxAccxkrPSyeC9oOB56Lvilax3Q5cd5aKpOAl78CJJejr?=
 =?us-ascii?Q?YHjyepJBRNRbp9DwdcEtKqPkaenseg8cbWp9bof15myzI/9ZkeDrh2INB3iu?=
 =?us-ascii?Q?wauaZEYsZU7RnxhflAibVd3JL/IwX6KdzeGOLkvBjQ+K3IPHaDHJHaENI+wT?=
 =?us-ascii?Q?rpqyXLv77jmpHJn4sOm7OWhKGfI5b6TZQ9VG0MdQ43HivTwBMabT7THUN5La?=
 =?us-ascii?Q?2S/3ReTTuXHfbnnZSRz8HOTnIf8cVMH4nQ6wLK6G+MYiGg2VBR9j45cUE0ez?=
 =?us-ascii?Q?IE2+pzeTdlDXfcYwE8w3EWIuCvmnvyrmx8WZsB7G5TjpQleAYRFGscrdGn+i?=
 =?us-ascii?Q?gXw5GLwvqGGn7o5bVmKsLxJb44aphRI9OS4v0XNqj7JfdVBgFqy9fDEiTOq0?=
 =?us-ascii?Q?Pnmp5AF7TbfcisdAUefVznet29ZDXDnO51wEwuGsaDE7zTxwPodQRKAiUuX+?=
 =?us-ascii?Q?wEE+dNs+nzo3Y+Iu9ZMN2jp+zC3a8ow5Cah0Mk7nEnEj1MPVqOLcDCJsFYjG?=
 =?us-ascii?Q?NktEMJJLh+lQ5nlh7wNox2BofjXUWD7Dge1CCi9Er9ClTea9rB/a3De1sL14?=
 =?us-ascii?Q?yvVW0s6Ro4DLJUFjeEP2Ng7UYTUkkUOp7egkXelaE6GlAp40WbmScsJI23V8?=
 =?us-ascii?Q?hZhtLn3G5Yy+TTPPHBO37hIqdX24PHlyFSR/8Tl3+Kl7RJ6SXliXz4+IINB4?=
 =?us-ascii?Q?pt/zU1nGXCS1ZlE/8SPzZuk5OPN4BzrfMNrHtrmEwnE6Sn3gLZpD52n4JlFl?=
 =?us-ascii?Q?Xt979MkwEhAzvUOiblYJHQjEbtF2LAM4RGZxPF/sV75+4R0ZTqDH9GK9bpM+?=
 =?us-ascii?Q?vzTbHL/xzGpXw8W7lw5/Cl9Mp/9RxP9lqY7q8WSY+TjDiP4dgbfBdHht6g9M?=
 =?us-ascii?Q?/2EBUTyGMcWST+vfg6zbT4KlVynZ+hBl+xuK/BVzsPtlGp8N09tKZi1DRcVN?=
 =?us-ascii?Q?zS11r+/oYcoMcqFmvqqhSZdBgIGRwz6qjSeK+lurZwiCRczncx1aHNMK3ImK?=
 =?us-ascii?Q?/aR5TkkeB5pHadq/5zySmWltLA9x5l2ZlTB+2xxw?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c7fd60c-329b-4813-4fba-08dace0e43e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Nov 2022 11:23:09.0040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V7m89u9iT20U+W4Iy8UdCDeK4JfbjrLokft9GpIPIr63hxkF2NFCMLuikFu2+LocZUrJbwDQ8yw+jnWOjQtzxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7467
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669288992; x=1700824992;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7gQ/Elu6Mam5i9Rq7sCAlk5hltsFXYgIsY+7WDaOL6A=;
 b=C9XiEtXdnR4ro3gcWjuoXJnqDGqxGa0Qm3oru/qHsb4edr88GoF4xNIi
 qS2ueUzGGhBOEehsTQxVHaPpXXsr788XfiWf5v++SaJDvEGJoRMsDHUHb
 B+r2pGYKmUuuPvC7KtxTI80i2nyUH2ybI+OzS/kElC7nXhou9wWiAlwEZ
 pzEIv+YEvkTqOPtaeywVlEsMcQFfsgK38b1Hi1gzyi6mvZe4xB0no8QoB
 PFGwTOBzXSjqM8w6lGSm1ps0bDG8ija4R7CY/hquosB4XgP6KAxeVdTVv
 BL9tAxf9rpJ6Ta+5n5TRuz7BpCv0xhFsV8R6GXSV2LtVcrSAsg0YeRc4F
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C9XiEtXd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: remove redundant
 non-null check in ice_setup_pf_sw()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Przemek Kitszel
> Sent: Wednesday, November 16, 2022 5:51 PM
> To: intel-wired-lan@osuosl.org
> Cc: netdev@vger.kernel.org; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next] ice: remove redundant non-null
> check in ice_setup_pf_sw()
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> Remove a redundant null check, as vsi could not be null at this point.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
