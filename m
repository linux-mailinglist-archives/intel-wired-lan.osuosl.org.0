Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 059451D5A20
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:40:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B686487CD4;
	Fri, 15 May 2020 19:40:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JkaM410CUhEH; Fri, 15 May 2020 19:40:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 80674872DF;
	Fri, 15 May 2020 19:40:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9E9E1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5D0E87EA6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOXQotJFtUP5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:40:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A086088F13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:40:20 +0000 (UTC)
IronPort-SDR: FLUJU5fveh6+r7fwA5Vwlz6/uTiMC2WEbhfIglq1a9iLuZWgcukiDLiS2KyItDJvE7aXRzlxFS
 xS5fBw48ShmA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:40:20 -0700
IronPort-SDR: 4tpk9dwHCJgaaMoEyWyKyNBZWnrB5a+fwtDP9dCzJTkzLPkypt6exH3x6yplFQ/flDMctTX5ea
 C8zSF9ZE/kVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="372782976"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2020 12:40:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:40:20 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 12:40:19 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 15 May 2020 12:40:19 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.53) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:40:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpcBkd1cPJ+kZK5GOqLYTfTUkIjh3vn+KaSDtmqp1bEPeWpAQRmavqE3WnnGbGQ4ZqBjJZ8QTD3kjRmhLnmEW3v5+wTdaY88z7imHyY9tU7DTa03tZX8gz1RV+7e5iwK+jyELJ77RZfE0+IU1toJPKkdgZsd2OdytM1Ka5IN9rUxSSdvvrKO7ONdy1a/6m0EuJ/nryMa1Fb40vBbKNaFk5aquFzCYAY9B60IiEMbyF9SywNRTv8Q+LtUXiukvUvE42uTCUggXeMuDR/ejJYsXFvER5pOwrQuLJyDX+FIDVppQQDMSSO5xkZrves3MkL85b8zticL01TDO+mNNz/SdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2ikcpuSXX/1I8/gXCOTjVHEKvTLOKVxMGszOjI/F7o=;
 b=nkudFJLxKuAWXEod+MlNWMGkFXPO7b6ki69gZRa3dh+Abe8r0xqAUOsqw30JOZ+ff5tQHMkZBq2jQTEngrnM7s1mtTRpwMfOu/+kLYCwryuU4ykjYELAp7tN0vKT07JXQefaNAop7xtBhg6ioRmD1WO67KHvH5ySbvIIEtd9fue7swwkzLcR473lufpOQmAb39niqI2kHmXv3fAg3uZeRf/dihAyp6Tr+KLPddqjbnVITRLNsIcvO43cmOQKmWUiVFjEGvaxAp63datUcS9fG/HEiS120jmQm/E+HA7txiJ1FtURY64ePwQdMi6sRedRrka+eCuT0BRbbov2lxueWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2ikcpuSXX/1I8/gXCOTjVHEKvTLOKVxMGszOjI/F7o=;
 b=HOyJ7eTdZIl2G6WWFvJPXQPQ/Np2YF+VlMwc0bQVYs4BktiCU0x9ZuTMjwVamFORBA/hqG5NdhMgeyIlxru/5EGV+pEP19DP3zhI6CI1dKhut4eyXS3DRCv4LCoEwhjikhJLe3Mg9cboiDjEa30e01sz2QbvXSxsAq9hhhFP8LU=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:40:17 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:40:17 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 02/15] ice: Don't reset and rebuild
 for Tx timeout on PFC enabled queue
Thread-Index: AQHWJNHfC4R39swjzU+GPyxEr48VzKipl4/g
Date: Fri, 15 May 2020 19:40:17 +0000
Message-ID: <DM5PR11MB1659038E8CFD9E5534040D048CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17f4da60-4310-4650-b3c4-08d7f907cbf4
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-microsoft-antispam-prvs: <DM5PR11MB14528F4900AEF24F914423F68CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1aVz7hZxl6qL8dKy4pJXsIEd6nmlPDRofCDb6K194u6vXu4ZTvhdckm+Z3zTvv9VqxsTybpgWyQDLW0/VkqeNyFnCScpg/jsG5/LQbljVXzUWreqccjSIL4XHFFKh4i7Ey7WLovK1ld+yYUO+3tO9MOFKzsYssn+zQp0DpLq9RJvepYqLTVDT2i8ZIe0xfDrcADlgNAwXErq5lMnJUmzSsrtDEyZHhdRIkMWs/294sZBCmAKGpRmeujgg0uoVc4CpKNhHBdLb3ARHlz60iYDqd5H5BDXbkp3s+/jldZzGfLzn/3rUSXNyUbYF1wU6oXu8Zkgm1UBkcgaHmJy3pKE82gAevwHPicVQ5c8nI6RbCHBebAJEu3htuYcE9uV016XHuDNiciSu7nomMyXedwrnS4PmfjkmfnjX5Q7VEuPzkmHSJGwgSH+vV0V17AI3koo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(6916009)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: ESnXTVhLsSr+L+W74i0aX5vnY8/hlOI8U7yFp3lmFJXA8kxp7M70evE1cy3wKnBUKbMHG9kLC+2rmawS27ihUr3XRO7QLCayem05zMMk8MZNVHkKaEmxhnpxZzgud+on+C98CJiRuiZrr2vTLV+RnZUXkoGPtVFxUbCUWNTHG+g18HCECAL96AlhslNxWksKP+wjDY6M9pEUkAubA0RNNiYoPnAKS8vTBOSPmGt1e7ei7vxjTJuhA+uBZ87aKAjzOJ1b1ijDXI5dA1A+E9bBIyenhDV+Axvgc4JihbhL86k0m+3r2Cn+D0NugZ7pZfdAjQruRaid+pRoDgHM9itJ/JUmfDrYiSzRu1ESHazaqa13IG69Sw+FresYxNg3yNw+xL0Ufi0x/GltBp1uCEXNrMJSZXIQsni1fDaPbj8QsfKwDe8mva4BTGGHzt6LZsYn5FKX9JjzyRP8mp8jAIj/PIA0IFOb4azaLbH0LNwwg6j/JT0t4RIrB7sCOcSI7+6R
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 17f4da60-4310-4650-b3c4-08d7f907cbf4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:40:17.7543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +kPExm07NkhANiIb/0WaqfdVhtUvQAXBCKCAUHuFgV15H34dE+LFX6j5/Sz7JEj1L8rUMoHkgQ7rS918PJfLyEq5si2g3t6LhbUhxvACRCc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 02/15] ice: Don't reset and
 rebuild for Tx timeout on PFC enabled queue
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Tony Nguyen
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 02/15] ice: Don't reset and rebuild for
> Tx timeout on PFC enabled queue
> 
> From: Avinash JD <avinash.dayanand@intel.com>
> 
> When there's a Tx timeout for a queue which belongs to a PFC enabled TC,
> then it's not because the queue is hung but because PFC is in action.
> 
> In PFC, peer sends a pause frame for a specified period of time when its
> buffer threshold is exceeded (due to congestion). Netdev on the other hand
> checks if ACK is received within a specified time for a TX packet, if not, it'll
> invoke the tx_timeout routine.
> 
> Signed-off-by: Avinash JD <avinash.dayanand@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb_lib.c | 58 ++++++++++++++++++++
> drivers/net/ethernet/intel/ice/ice_dcb_lib.h | 23 ++++++++
>  drivers/net/ethernet/intel/ice/ice_main.c    | 10 ++++
>  drivers/net/ethernet/intel/ice/ice_type.h    |  2 +
>  4 files changed, 93 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
