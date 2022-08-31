Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EB85A73E8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Aug 2022 04:28:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9283782695;
	Wed, 31 Aug 2022 02:28:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9283782695
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661912919;
	bh=gh/Y4oUlFtYQPc0bJ7PHaMxlqe/3r9QlqteuL5eEFUA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fNZdMa8emOoNR4qTXra3hvrM+Za982bqjBz7J/oy7IE4CJLWAoikjtN4lvZ27dVc+
	 UcDI0V2UkuxrDuwuyFnxMJKS4Jum8apMaQf6mz8L1jJss3iXB5L8ujvt1tsyyn1PTu
	 t4GXVFSlrIoaNQ0oNz1moAF6g22HOn8YQLI3RHmss4Hondbzii82mg7o7YPnofY3HO
	 N4a2S0j1rzbDnLQ4iDbGytrgHLNraUpDQx3lZRrpqOXNgzOCI0D+Rywp2D8slIrt9c
	 lKDxUE4Xabt35b1nxshPpft6kVqElEWQ/FOAYevmCzZ1soI/TntRE7FCLUuW5+tzGA
	 g4F+9xJrZugvg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4b6ow-wHsbVy; Wed, 31 Aug 2022 02:28:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5857B82660;
	Wed, 31 Aug 2022 02:28:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5857B82660
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 746481BF846
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 02:28:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4DB1E4056E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 02:28:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4DB1E4056E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PF2mPoBaQt1T for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Aug 2022 02:28:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A370C40235
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A370C40235
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Aug 2022 02:28:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="296634170"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="296634170"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 19:28:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="645075813"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2022 19:28:28 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 19:28:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 19:28:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 19:28:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NkAsIMySeGmWaAKSbPiMT0U/7oMpmG0X1/X7LZAkFgl8NR241GcfvMSsIRZq22wHPsad47P1pmTiQ5H+fXO+k/nnnLO0NHIemQml+Fg0iH+nKLyCMmxD8qyxys4EOMinKNfdkuR06P6AONWlzeoAW1DEZHkz/XqEfz4CIDxaym+B9E2GHRLLDlm6eqSnrIHsiLYaEDAgi9XKf8vxESqkp2RYz/TS/sXiVKl9CMn1XbGPiGkp12m/uL72QvJb1LcFXYzi9PUKd9czjpOAV08ofR8SO1Ra4+YhoVtZLa6z/VIrlADRtcMlTUGaUVO+YwdHkcu7GvWjdayxP3+U04Ijgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rU7TB/32QJ7oLVbk/pX2x1In6hVwvh9oFugFqEYHTSo=;
 b=PNPp8z+pTOpmByJOFoINesxpgLNtGljLvPxOWqj0kk1ARHuKl/gf+AZhAo8P80KKqwF7In4LS2PSGj2nVMQsLasTwNZPzMRb8oyYYyBb5gYqjTMMajFVtojnHkMi+rS9UIGc+pKsvbw+nYVpiZug+lFnYEizKx/EiuIGoUa0UxxGH12CtyzsAtgWlgTvkYM6CzrDx0Hzqc8Tovre5ZHKS0k/LVseZTSnJ6G+Mq1GSUAOmHm70/yrzBGFU7B/TVmkCrLQzAxlHINztwP230gA+cr24rHSeKyXA+cKQ1OK0dEDX27GpSOAFLyEsDdl+ZoLz/WGrHknDpVNpsLKmGeXtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BL0PR11MB3188.namprd11.prod.outlook.com (2603:10b6:208:61::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Wed, 31 Aug
 2022 02:28:23 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::b80d:5e10:abd2:c709%7]) with mapi id 15.20.5566.021; Wed, 31 Aug 2022
 02:28:22 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove second GNSS
 TTY device
Thread-Index: AQHYu3nHLfKyeDEe4Ey+oqYrc/mtHa3IS4xg
Date: Wed, 31 Aug 2022 02:28:22 +0000
Message-ID: <BYAPR11MB3367A0971DCE1C30C77C15FEFC789@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220829073348.9520-1-karol.kolacinski@intel.com>
In-Reply-To: <20220829073348.9520-1-karol.kolacinski@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6447d9d0-95cd-4cf4-055c-08da8af879f9
x-ms-traffictypediagnostic: BL0PR11MB3188:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2ac4ERzav9c1o4dguMAodHP2bT5KDpS6K8DOR7rWX6a8dIj+1wq3IM2wJLWqKf0ntdiuuluVXlGgZ8FzaYb7cX3R/lIA/EdCHeynqBRfAobpsVWaePsoYjBLhlzjMmJ97qQ6mlLa4VlgksGzmd82OLIA+Enxiv/G4svHpBgJqZkqPA8EIvkamqz862uFGQkK2oGgMSlYyetcODOCWIOBwEU/IsoRF3tNCzl8oG1AEQtOBkNq75BC2o6m1qWk9SRZWntBMIzx0FhZfGo+SSvI31Vhr1rN/GXMF6ldFhb3CnUJP3YfV66Gx+dj9tzWE7lpRZGdGiNwfX1JkHqomQL3sChctuGIipgWGwxfOGHfGaq/oqWqV6UAt5BztVypO2NTKcqwBCw0ic+2DrA8ZiNUHK6JSBCYeTF02QpGssaTshtQCx6lkyioOu2FvuiR6WhOXLvVUhn+CBz3vMeGHZaZb1A91HkWo9H7N21VGpwQqolJnly3BFd/tcybXllPK9nZ72fBhI/0oknPfZug71v7z/HIuHAkgF/bqKFVDeOGsiF1qRTeEFCN4b3Dvxfm/wgtLOfFE/fYW0ZOKfJHPkhMzAbIhZRQrJgadbCTzseTV1GQs5a9pl7T4FZfL6xdCleP4QoOIlMfObFa0dAxs4qxXerI/5qeOG50g2Is2JVfqI7Nbl9PUNiqB40GHjj8/v2opFCFevEnb56WhfD6o+1zd7Pe3v2IDuxzYVJMlBXxhNes7vc2/x4oy8r+bzXF/MX0GvPrGeJLJwnLwkbYd17hcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(136003)(376002)(39860400002)(366004)(8676002)(122000001)(110136005)(316002)(71200400001)(38100700002)(83380400001)(66476007)(478600001)(66556008)(4326008)(76116006)(66946007)(64756008)(66446008)(38070700005)(82960400001)(41300700001)(55016003)(52536014)(5660300002)(8936002)(33656002)(107886003)(9686003)(6506007)(26005)(186003)(2906002)(4744005)(53546011)(7696005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7wCPeHt/AcAWDccqyLZ5o30kQ0sh+7NnFAfAn/6IprdR9qSfMbHkBacK1gKM?=
 =?us-ascii?Q?0HWK4/k57U8CRHS7eSEPlZICPfVDzm5c25QD3KwIYgbdSQ0frdqKJpXV1dHw?=
 =?us-ascii?Q?WtCfASkK8DqB+oHdebjoMcG0a9QJWGS4u/5gyLzw7mC31A+wGcGVRvQ2rvjh?=
 =?us-ascii?Q?h2C+2XwsvpALGRo+NQHtniWqDMAXtx8DRHd6xypOn4aWASwCv/kA97Fm2X9c?=
 =?us-ascii?Q?mYixtRg2pIM9stl2dUQVV5su9z1TVAQn866fZ1oV1bU6hTV7UJZYvOkovtBh?=
 =?us-ascii?Q?3oCfKIUVYmvY16Ke4BzHdUqrXmcfMehWNnCLfFGscLogIEn9HG4c0ZK2okzG?=
 =?us-ascii?Q?Q0rymMHKgQouLQ7oV7VgRGD+CBeAF35TUGAWYgJi29HrpWI/7qju5q45p0RH?=
 =?us-ascii?Q?IVORp4h5YcI9ydqnQbzSrt1BNcVoCq0J/aVTeH8r0HjNLbS4hmh2EaEZwtjB?=
 =?us-ascii?Q?AO/llMSPOPWl0ppKk22MlzKu9NrWcLQzXOSkswEr1bOAupgi73iid3uXXdVd?=
 =?us-ascii?Q?LtdPIx+3winEdJUlMj8cretDS9gmTta3GCUcgO7xp7YND310ZHo3xWFH+MQ/?=
 =?us-ascii?Q?HWi46m7jtsOXSXrIKtdfzDPO1ugqfM3vZdgn9j8LODh/r8XipYeFsY5rjVJ7?=
 =?us-ascii?Q?kznqTKsiSw0pyHkA2LErY42+rWoiOUPgBdb7YWjVa6dxDPsEoSb67iNqnEw6?=
 =?us-ascii?Q?gyVhf68+wkpVIgaUwvcLxJE/d9fGj8wjKOnkaV/haiaVn1FPiHZTHEeiOZRI?=
 =?us-ascii?Q?QXWHPv2FOdn5ubXavlg/yL/ei+OASktiBPev6H/MJXvgjnBC3r22LlM4as0R?=
 =?us-ascii?Q?T90L81JcgzTE1x3f9jVg0XrFG0VtoMVOk65wbFgf0Mpl1lwFOtne+ju/Z0kW?=
 =?us-ascii?Q?XdKg6O45EmWayMNMBgDxRf3A/wqsOEkcjp+8isF3iOVhHztIIcuVVTnPtKsl?=
 =?us-ascii?Q?Z0rL8odIwyQ7R/3+BJZ5spaNNx4HTluypQ/ycBEwhJ+vxR63TSrAp3qacIyg?=
 =?us-ascii?Q?+jEVQF4SLJ0LWllBnEtku5nsjGGtFHuq/A4fJs1iPeos7eH/nSMhLfE1cva9?=
 =?us-ascii?Q?sNrlkExhPUF5v2FW+tLZSZNf59XEwlBF4M9bfM8ULxfAx1RKTn4TYYddBwe8?=
 =?us-ascii?Q?hyM1NHZycPf6thdzuBEepsoj11p+VIZ4lBN7rRgUSEYXBx7+v5Pa+CM3K7nV?=
 =?us-ascii?Q?/Mu5CCDmYB4MouoW1pqPw+mYfsHISf5nyFtKX9ArE0troTTByVRVefJ1MRzS?=
 =?us-ascii?Q?pBPa2gPv71dU6OSmwWCuoB35leDE5P9bHuF4fnxI3GH+te69OsMM7AaWyQlx?=
 =?us-ascii?Q?KqNR/+pxo/ZcHO4WBDXcDv62YRT4IrYMqfaJ/RfpspFgstDfe7jxtCXTs1dG?=
 =?us-ascii?Q?G/FM4Wd5jzXhwIEeL4j5+lITxZ3tkT876CT7C+pTLy85d0DHlrFtbw5RvuXa?=
 =?us-ascii?Q?zU0eUIDNthcS7Xx1hvmvvpOqUv87o+kI4qlP1XR5P+2vLEIvYjgIbFLiflpV?=
 =?us-ascii?Q?0GcsXHzzfIIBKvgaCp+t9EpeZmxg40OLiielkq9x0PJQ1eqqTm92bA0uVNzU?=
 =?us-ascii?Q?o9LIoDW/2ubdYl+Nmn0cjBguV8Tn27tt6Mse8J9E?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6447d9d0-95cd-4cf4-055c-08da8af879f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2022 02:28:22.8607 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wsKhvQ1l7TejDop+hB0awT5S8OQnStONfy2hRTYoTfxeqimRJDflknFZTg5L5VT8o1MhlYVIEV6n6rpDzNu10A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3188
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661912909; x=1693448909;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ICcXADZJMd6HidTAyO0bPQ4ewUod9Y4OxoIPZoeji4w=;
 b=C78hLCW3MrnZAPpu9hpWhIHMtSrFoFbTTbpWfYza1Aqkt0+FtPXS0e9B
 9jqJPwSJYAYpuKd/vu89GHb4EUY0UGqu4Ai2XXlOhXCy3bsCHhiLc7kDc
 950LBqjetenBPMHhzRl5lP/lxHK5W5SHR//Hm06l4KeIDbSYiTK1ZwhEi
 7Jiislx+WmengqyCLRNK9WQiwpiD/TuGNQKHLLVACSfaXlJehGVhmdSX3
 dRSptbkPCeg71/5e2xbvKKn9WC/nO4DI6i2Y2b1n5kZSo2YLddsENjmWq
 uZm4DFUwhVzsRNtwdfFBPD77/Esk0HJ/2wvl8mUuwMS/SzaKOoz4YBDCQ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C78hLCW3
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove second GNSS
 TTY device
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Karol Kolacinski
> Sent: Monday, August 29, 2022 1:04 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH v2 net-next] ice: Remove second GNSS TTY
> device
> 
> Having a second GNSS TTY device causes issue when user is reading from
> both TTYs simultaneously. Remove second TTY device to avoid this issue.
> This TTY device is not necessary anymore and it's safe to remove it without
> breaking compatibility.
> 
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Removed unused variable.
> 
>  .../device_drivers/ethernet/intel/ice.rst     |  4 +-
>  drivers/net/ethernet/intel/ice/ice.h          |  4 +-
>  drivers/net/ethernet/intel/ice/ice_gnss.c     | 68 +++++++------------
>  drivers/net/ethernet/intel/ice/ice_gnss.h     |  4 --
>  4 files changed, 28 insertions(+), 52 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
