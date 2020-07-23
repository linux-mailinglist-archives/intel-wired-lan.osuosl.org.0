Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7A222A483
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:24:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC9C588B5F;
	Thu, 23 Jul 2020 01:24:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nZdJO4UIfm6g; Thu, 23 Jul 2020 01:24:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAFF388AF2;
	Thu, 23 Jul 2020 01:24:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 711CB1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C73A892A5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RB1z80hx8NAC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:24:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C69D892A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:48 +0000 (UTC)
IronPort-SDR: 0B0367N1LiQ4xUp8hr2/UoCf15GJkfbsNzZ1qDszRPhbaQhy5rRrqxfgjRV2kexlv7ekfnz9HQ
 gF62d7gcRtOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="151760303"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="151760303"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:24:47 -0700
IronPort-SDR: l7jkDREYUbvURBiq2s3/ll95gs+wvv4Qk7+ikwUXvajxNGGzOV0oMwVkreZIV+gtHS/OEtjFKc
 KDfbaRMUdW3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="326864738"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jul 2020 18:24:47 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:46 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX151.amr.corp.intel.com (10.22.226.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUMgF0a9GpqpxVgp9XOOMYTC6kosypUEweh6GjMWq78IpOl9undRUhqkfPA93XMsdw3Hvn8Vd/Un+v7H+vQtpZdoVyCJWaDYYFUy4P2Ie1SGKXQ816yDyukRgNxqCPhyu3K/1shOZs8xosJ+3v3vlSf5D1R82fckUWHKkjHZ+DPwabD2KqK7AZM0NSnJl9KSBdjhndhLtVUigZrHo0F96kCQ+097zrbSdj+zqLPrbUylr5A+6wPMgTBgJlCwjmT4i35s5venY0IQevfT7cDT281vhrqnHzRtJ/8s54P4vuoNBd8QRCz8PYvkyye0D8LWlMaTEnEoCqcAkhExlpwCiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJY00oaUD3TpXd+IG8CWtAexy6uGSaDVUJsH4i0y6nY=;
 b=S9U/oglxccf7FdBi/M2LONnPE2+jUCNEY1REt/L4HGi5ysG+l29ougrPhNZZ4XICG0/odE7x413I11a8yx63sGSfzJYJX1nJuTWu4jehgZPrkyzoO9cN+WXzylDVyE9WW6tXwoDreyCEe6ul34OB0OfmKaKrASpoPKRtk1VOG7qaaXuFsa+Umm3K9HPCw1y7hT6QN7MFVALJHVt9HFrHmLNOMrY4cedKF7yLMZWKyFJtjBvKYnzPMYYXVaBYyzK+JXaul/4sWKAXaEd6aRqgw1EM6Gw/Ak0iuaKeO+oaz4YSVs8a2NBrU5iiWuG98RsZTmcgslgmGYdA46E625w/gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QJY00oaUD3TpXd+IG8CWtAexy6uGSaDVUJsH4i0y6nY=;
 b=Bh3u+M0J7YvceVPaHFL5h5bq1kRxS9WzwmlPYXLzSGTgkowxRFtN2P0A3IOdVRNczkD2vxmTbz3gA9e3eidRF9zqDJFPQAxL13jzoFqEj2ZUugJqwrK8IEmilzjXuVyNWXP4ZtS1pI6qlUPvHuBveaLYdxAv2QdYOw5SxPryy6w=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:24:45 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:24:45 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 01/15] ice: refactor
 ice_discover_caps to avoid need to retry
Thread-Index: AQHWVgzwSdIMGOkWGki4wXOnbIUSlakUc+7A
Date: Thu, 23 Jul 2020 01:24:45 +0000
Message-ID: <BN6PR1101MB2145018A97B366959F2193E88C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: adb06163-65bb-447d-0fac-08d82ea72f16
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB15375BF78C38168E7DC4BBE78C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Wr9GCvcdFtGlzgeSUqadkS0aor4M/LUdOnxrKUTuunr16NAEfaQ77E5oU4vqntOiXx/CIdR8XFhx3BT05psOjFuoE/J+ih9/FZ1Mpv9DLosKuJPNR0fA8FqSB8yrRLU5bABXjXDhfAL9pS3AOs+sN5EM7+SYHulP6cuK+x17g3XNDFBM+X4crmNDxgvZED0e/qzsbqGP769hBOeAeoOeiO9QeSQcNAh2O/P7g2HZvo3kuPibLg/xG2Wl8YWbLCaIdtIgYfnCO+u3uvHkdJOnwE/PWMSe3vQKtQEh4a6XQtuLaRxW/BoHO1O1edhrS41iwlI5INMEbcvaN6iLr0eCAQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: acAKZy3/pxTaZGQMmOk+5/jABz6uidO2udhiPuV4cF954a3hon2ownQGBHOn4jNKO0PgtzWEs4OsHWpeNK9PpMMvThW8XZzyqYzd7dXIBRMZI2LMO1fOFQpZZarBd5wKjZBBFVgM54wX9fXpEKwK84Jb1XoizZjob6TSVZBOsBRpwvDR9xKuIBJ86nqWFgHwOuQ9He7p8h3q7HdRM7olsXT18wJPfnv3U88QFxV5kbTWZPcshM/QlKPY/QMt1iuwynVEwCFxFe3Ur0bDL8HbDoA1ibpAvPa8U2Vji9Cu7LgZgCwZ38GoLsUPBgCjdHQCA/nG30FKO2ygf7YeWU3Az4TZILGVwU9PhKwU5P77ZDq2QHhQtPkaLOsj4UWHs1PsPK+Pp6s+s2fZplNcmqF1Wc9T11S4hfugB3nyU2Et/ujsDVs0bv0OkqydWTm2bsoESLxQGds9zk9f5BT8PZNlASpuQvR9IyXtX/+U7Yaz4fc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adb06163-65bb-447d-0fac-08d82ea72f16
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:24:45.6256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d2YciyMplj61/4kVscsXsN7+sRjMt/HXcnsyjbpl9x1MpiRz9ldjbvOO8vZv4EkKFqYd14dBg/HKwO3bKXp7ALiHlECeaMGL0v6jqNIdhAM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 01/15] ice: refactor
 ice_discover_caps to avoid need to retry
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 01/15] ice: refactor ice_discover_caps
> to avoid need to retry
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_discover_caps function is used to read the device and function
> capabilities, updating the hardware capabilities structures with relevant data.
> 
> The exact number of capabilities returned by the hardware is unknown
> ahead of time. The AdminQ command will report the total number of
> capabilities in the return buffer.
> 
> The current implementation involves requesting capabilities once, reading
> this returned size, and then re-requested with that size.
> 
> This isn't really necessary. The firmware interface has a maximum size of
> ICE_AQ_MAX_BUF_LEN. Firmware can never return more than
> ICE_AQ_MAX_BUF_LEN / sizeof(struct ice_aqc_list_caps_elem) capabilities.
> 
> Avoid the retry loop by simply allocating a buffer of size
> ICE_AQ_MAX_BUF_LEN. This is significantly simpler than retrying. The extra
> allocation isn't a big deal, as it will be released after we finish parsing the
> capabilities.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 43 ++++++---------------
>  1 file changed, 12 insertions(+), 31 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
