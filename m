Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F4F1B6487
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 21:34:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3848D87ED9;
	Thu, 23 Apr 2020 19:34:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MY+Lu2aFupgF; Thu, 23 Apr 2020 19:34:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1E8787E0B;
	Thu, 23 Apr 2020 19:34:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9661BF27F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:34:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5877C86DD7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:34:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N4cwE4MsBQui for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 19:34:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3539A86DD2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 19:34:26 +0000 (UTC)
IronPort-SDR: JKrQ+B21UJ0tRJfzE/GsgzYjRadY0eW+wG9yi3PRTbRE4P64WmyaN+Aa1O2S99au/Y5ExHvdU4
 4vIroJmjOl5Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 12:34:25 -0700
IronPort-SDR: 4xUI74QZzyf/TyQswTVjnx8uudk9y3i/MeJwGAKOrLe8AMtVyRn4ZbIGTkj2nTPunzhbq6VNuS
 Hr7IP1wy1duQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="244976930"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 23 Apr 2020 12:34:24 -0700
Received: from fmsmsx125.amr.corp.intel.com (10.18.125.40) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:33:46 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX125.amr.corp.intel.com (10.18.125.40) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 12:33:46 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 23 Apr 2020 12:33:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gMdF/1EutKuAlKVHpE2FwtCQP6riLdpdrGLEDAzblg2CdI/eGkIWsivHDsnP7HDUnT7+lG/vtnAz+AU40R83EFLzwZxb5/02RfDyrnOQUZlvFbW7FwSx4mUhwwNSHtSbRhX2iyG3JZ0gGP7Ewl3nim5RMTIIVHmxRHF/dJtamgMfyBTkGISHZx+siUJfijBvEhXanH+qqYEfv/GbSjd/xV4W64WHrqMz3hgUEelmEVCt22qmwxouM7sESMpT555H4YC4yiCGdkRkpMkAcGlrH+/WT6PTFhsZwgZYIzzHR7k+VLcstcUXrPSSeO5yNYtXReIFnrEhkG51SsGUbpD+2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yGJyKV/NtohsVhTqYF/dUcwgNYRIfu39wMMmFkP6LDI=;
 b=Yu/wYAwjSIjNtqk7ZizKyVgzRSTigaMIk7eQetPkkR4r4qrAqICX8TSxd9QsgC5F6nMxVXiMU1+MjekJ6mWui1fT26n1Q93dxgdpRyLOKsZYSTfTs2D6dQSu5HxT9wrblLds4PKpCC7SoymWoaGW498p2V3wfc7lEeASzomXLWbi+b3fKe+FRcRmHMqlCXHvaAGg9X4bUmASDTid7zocg2g/Aw/PZYkzpRvP75sqIRFf2pMmF17nRKvpniCg3yRh3na/VP4tphBlJwNz5wS0aUvknU3XaTFWtwfTNsGcCh7hK5AaoPFugC8tZ4CFTMzVbPNtBxq8WGNTqXVf45WJsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yGJyKV/NtohsVhTqYF/dUcwgNYRIfu39wMMmFkP6LDI=;
 b=N/WHZe71f5lSaIAE/vaWsJ957QyrJkbh2H23KKGIzKPGWbHZPpv7hcP1BiIcjQXdlRmX15htF4XBm1LzfpuTCRdtakYLLT2ZkmIZSH5nhFbJGt0JwN+oYhpfGuqGSIPV33SnHy5HLZRokNmM8406pnleb7+6158nyGc+pBdS+MM=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3626.namprd11.prod.outlook.com (2603:10b6:5:146::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.27; Thu, 23 Apr 2020 19:33:45 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 19:33:45 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 5/5] igc: Dump ETQF registers
Thread-Index: AQHWDSCVAKkNOmaWWEOjN1R9sT8/V6iHMJeQ
Date: Thu, 23 Apr 2020 19:33:44 +0000
Message-ID: <DM6PR11MB2890329D366B316B6325B15EBCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200407210711.24371-1-andre.guedes@intel.com>
 <20200407210711.24371-6-andre.guedes@intel.com>
In-Reply-To: <20200407210711.24371-6-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7939bccb-f470-484c-6dcd-08d7e7bd3cdb
x-ms-traffictypediagnostic: DM6PR11MB3626:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3626B900ACB952C292B3DC52BCD30@DM6PR11MB3626.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1360;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(366004)(396003)(376002)(39860400002)(136003)(346002)(4744005)(7696005)(8676002)(81156014)(8936002)(52536014)(316002)(76116006)(186003)(33656002)(66476007)(64756008)(66556008)(66946007)(71200400001)(66446008)(478600001)(110136005)(26005)(2906002)(9686003)(53546011)(55016002)(5660300002)(6506007)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GWgqy+Fyi/vaGnbM06VL4GUzW8tv65evbyzdetp2C2BMIB1c+kZ/qvyz3sv1QmOn4j/fvs46zMOu1GW6KzQVUuLyk1jFp3SKhm415IvgOEu2Zx78JdeciG+aFAiKP7OncbMDiLco7xR2Ql0KWLe2vJLjgE7Tb3J6iy3gDve8ct3gRLS/LtlZbsgSbmQ+qb7aXaq3v6UChfk08aGzIjJ8ISbAptDiYHWqKL+Cb92T78k2LtlQozFXs13//clxMyRAFUs+lAEPWaaUaR7Qw7xRGlKPBbuR8NKrQVdQUfstjlLEjYoDzFG8QpIQQXwEETunFPt863UzA4aOigzIuDPYm9z2FSSidFf4sChIdDq+V1noJLRnEfjdKJR9k03831UoSZIWqauHi0jrFvrMwmCrnm25jJ5i4K13WfH8J1PyjZNMa6o0oDPE847XzeVNGgUr
x-ms-exchange-antispam-messagedata: vGpVgiQbq5wCMrgyTwNFYutaIlVyvmcYU1qrZ9a7GjDY7WSWNpftdhbP3d72bYKC5c3PsuplMLfAjI1Ub+ND8psfwRte5HRGTP007SUfUx3cMNuUP3gPUxh2RAW7SHMrtiupCEJqStJpV2HFFVwbwQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7939bccb-f470-484c-6dcd-08d7e7bd3cdb
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 19:33:45.1043 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3kCigVpZlnX+tYVvZ1dzT7BGaQgw0T0JwGDM2K/BMrusSA9J9tFNbr9YEmE1wixl1I2kDuGbCswDyZKkVe62PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3626
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 5/5] igc: Dump ETQF registers
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Tuesday, April 7, 2020 2:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 5/5] igc: Dump ETQF registers
> 
> This patch adds the EType Queue Filter (ETQF) registers to the list of
> registers dumped by igc_get_regs().
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
