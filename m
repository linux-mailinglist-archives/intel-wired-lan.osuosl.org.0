Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F186F1FFA43
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:30:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE48488709;
	Thu, 18 Jun 2020 17:30:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xFEl9H8xkiRS; Thu, 18 Jun 2020 17:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57FCB87D36;
	Thu, 18 Jun 2020 17:30:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97D171BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8E93788AE8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zi4hHDSGcPob for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CD5EC8851E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:30:26 +0000 (UTC)
IronPort-SDR: u/IeH3PYuASaw3GxAKWHqdH0w0GjywJL5yEovRfa5+VG4XT1HgZTZFxuTAaerUQaHZGxoOmv1h
 xk/19zLqTKZw==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="204155551"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="204155551"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:30:09 -0700
IronPort-SDR: R0JIZTRzrTg6MiECtths5wQZT+vQ5zQJrsdW+H7UtddC4O1FNMUtOgqoW0Wc50C5eAytps+NlJ
 Qg8PgnOmCukQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="262083869"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2020 10:30:06 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:30:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 18 Jun 2020 10:30:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JHmNzrnnEXI8+cY0Sf2i42hD7ciNtu6CvChyFXzOqJzMEbW/Vdb3gSgCyxl9zHhnHwnhIqK+bJjxwoyAfF00S2H5/ua3Gcmm6hCOAx3Ai+kyegw2/4DPpk82899FQDTzRpE34QXdeg77jWQfbRzS/tQM7vsti5mdkLJYbaThxm+FSn/0tguhbjtMKMmJlalEvaAQItHJSeAouzz2IsyTVvAnmXiS8xBtBZZHVFlIr6UEisqbje0neYTaWNcO8qH42hBn2B7umqAsyeQup/W62Wo1bIVHXF0TQ4Ip1eP4J4/ptY+wqd1r+TvyP3dyoRPcAr0OO1P1LOhoyWqqG3ELhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCF9MXoF9gy65IHm61o5+amOPW2mNYYD8MuS6A/9zCc=;
 b=Or7Cz2onhODYRRsBPhP7MRm1g14dQbq1R0JzkH29mYIe8kMHWSGqbC+9I1LhZR4elFsBasdp/xG4b7ZUnhkWsFeUok6r7zFDAvEKFhId3OtnUSgi0SDfs1K+dw/Iw/QGEBgjvKA1rwATtZc+PooMMfsaVvAbenAyFt/VqUCRieVfHnDLFnkhPRrLV9g4cpbedlI5ZLpwgGIR70pQKK5mReJNaQUDK7+nCTtvkGN8rumtKsHzMiDE/3J7XZ2d6xDR76hRLjlk2by2Zg5p16YUciOPuu91u4oa7Or1uaURzJS3QHS1n3BU1IdDykUzMJV9GwLJOR5J+kR7j0Nb+0uHDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QCF9MXoF9gy65IHm61o5+amOPW2mNYYD8MuS6A/9zCc=;
 b=blWJwQ5HMjFm2efpLR56lMhRf8FG29fMLmNbxYAEoMU4rW87q75HXhfc+1jYN+gGYZEvr0xeex8crrNlY8rvHHk30FJDuo+nIjJMa2SNdeh3JBzXlUek1IippcCVKQyuQDiM2sKrAGCbnGDpwyrSJchT9Po4IFB+Y7+5L0nQhl4=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3660.namprd11.prod.outlook.com (2603:10b6:5:13c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:30:04 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:30:04 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [next-queue v2] ethernet/intel: Convert
 fallthrough code comments
Thread-Index: AQHWOh1cPPQU2A7rjk654OrbSwtcQajet8fA
Date: Thu, 18 Jun 2020 17:30:04 +0000
Message-ID: <DM6PR11MB2890E6CAF422C79422991A3BBC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
In-Reply-To: <20200604030726.1573257-1-jeffrey.t.kirsher@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.214]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c5023a4-b4c1-4181-2209-08d813ad3d17
x-ms-traffictypediagnostic: DM6PR11MB3660:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3660CDEE28D5A9921B8DF1FBBC9B0@DM6PR11MB3660.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oJPPpOGpeINpmaG7+P2XqA0EUb4Fdsrpxej6YWey6Hif3Us5kmuYqnyLeK7f7Esm5rD6jfbWTuhyTuxKasK5qo+GzV/WW9BmYW5w1Ud1HYOePaICIP4ofsZP0RQbkbTQN2CR7nGpDbZRJKHi9glwncdy1Ev93o9HVaZaV0i+Uz5EACxRWzdGKg1XbsEg6Lha6dxYhYYmBvenn+KfvaRJwGkY4A33NiCQOMhsn5X9XoUdcdys/XPPFdSzt+s4M0yAcCv576tw8mQosmzyKvvVqdJYWvi1p2QPliqW2yu243TTvfKiPzunRyaIYGTgy1INH6dBPVE6nSUrYC+uLyr2Qw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(4326008)(66446008)(110136005)(83380400001)(66476007)(66556008)(64756008)(76116006)(66946007)(86362001)(9686003)(55016002)(8936002)(478600001)(2906002)(8676002)(316002)(186003)(26005)(6506007)(53546011)(7696005)(5660300002)(52536014)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: LDJIpCvQNXbfVuNjQvOpzD8f3Y/ltnVBzysj61Y0TgYBG/VZDeKljl0NT19Buv18v/DeTHyNl7eYEOhuAOLxRo3WJhWxlfZIuYJw2Lqyh2x+AVCMjiBdHe+kxi+wi7mJcFR9wXw42qXlxRTBHVYhKylE9zV2ReN5nPLY18Ccp+OMDG73y1fCG6pXfEi3IOlaEy6kd1s0vpbQbBYJP+3oGeID5eKa+Z+bb6dysqWanmex38udsKp1Lt6ggQDFN3Vb2OHzhp3xMEW4Qi1U4J7gvUGm8LUiN7fzHYh17PEm+7USrrhPiGOpfirieOocjbO7H+n+4LAC73craLX3Ywc1WdV1w9aA5tewRWkFnux2emmfxqFqMJ5ACkpCQQV7JIfeq9ONraiwO2mn9YFnyR4KdwA/7rt2PyVHGLrA5zs/hPcaF632RFHO5oUgqZq4lZAi5tExmEnsB/+fNMVhHAd0xNl1Mcv0/oFB34VDmW3WuyXTThoE2yaZuIH59RApTzYC
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c5023a4-b4c1-4181-2209-08d813ad3d17
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:30:04.6732 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LkTaKrV7713pQEhglBRFQrBdLw35y4QU8M4SAmLY/DhQvjJk65E5PYKlCYSqL3vrHsCGydoYVg8J96sc1BPGUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3660
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue v2] ethernet/intel: Convert
 fallthrough code comments
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
Cc: Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jeff Kirsher
> Sent: Wednesday, June 3, 2020 8:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Joe Perches <joe@perches.com>
> Subject: [Intel-wired-lan] [next-queue v2] ethernet/intel: Convert fallthrough
> code comments
> 
> Convert all the remaining 'fall through" code comments to the newer
> 'fallthough;' keyword.
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000/e1000_hw.c   |  4 +--
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  3 +-
>  .../net/ethernet/intel/e1000/e1000_param.c    |  2 +-
>  drivers/net/ethernet/intel/e1000e/82571.c     |  4 +--
>  drivers/net/ethernet/intel/e1000e/ethtool.c   | 11 ++++---
>  drivers/net/ethernet/intel/e1000e/ich8lan.c   | 14 ++++-----
>  drivers/net/ethernet/intel/e1000e/netdev.c    | 30 +++++++++----------
>  drivers/net/ethernet/intel/e1000e/param.c     |  2 +-
>  drivers/net/ethernet/intel/e1000e/phy.c       |  2 +-
>  drivers/net/ethernet/intel/e1000e/ptp.c       |  3 +-
>  .../net/ethernet/intel/fm10k/fm10k_ethtool.c  |  4 +--
>  drivers/net/ethernet/intel/fm10k/fm10k_main.c |  4 +--
>  drivers/net/ethernet/intel/fm10k/fm10k_mbx.c  |  6 ++--
>  .../net/ethernet/intel/fm10k/fm10k_netdev.c   |  2 +-
>  drivers/net/ethernet/intel/fm10k/fm10k_pf.c   |  8 ++---
>  drivers/net/ethernet/intel/i40e/i40e_adminq.c |  2 +-
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_main.c   |  6 ++--
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c   |  6 ++--
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c    |  4 +--
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c   |  2 +-
>  drivers/net/ethernet/intel/igb/e1000_82575.c  |  4 +--
>  drivers/net/ethernet/intel/igb/e1000_nvm.c    |  2 +-
>  drivers/net/ethernet/intel/igb/e1000_phy.c    |  4 +--
>  drivers/net/ethernet/intel/igb/igb_ethtool.c  |  8 ++---
>  drivers/net/ethernet/intel/igb/igb_main.c     | 26 ++++++++--------
>  drivers/net/ethernet/intel/igb/igb_ptp.c      |  2 +-
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  4 +--
>  drivers/net/ethernet/intel/igc/igc_ethtool.c  | 16 +++-------
>  drivers/net/ethernet/intel/igc/igc_main.c     |  5 ++--
>  .../net/ethernet/intel/ixgbe/ixgbe_82598.c    |  2 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |  6 ++--
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  4 +--
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 10 +++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c |  2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 30 +++++++++----------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c  |  4 +--
>  .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    |  4 +--
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c | 10 +++----
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c  |  4 +--
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 10 +++----
>  drivers/net/ethernet/intel/ixgbevf/vf.c       |  6 ++--
>  43 files changed, 135 insertions(+), 151 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
