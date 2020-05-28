Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 388351E6DE3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DAD858834C;
	Thu, 28 May 2020 21:41:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uVHziFd6B+hq; Thu, 28 May 2020 21:41:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2669E88332;
	Thu, 28 May 2020 21:41:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3ECD91BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 39FDD8832B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nvzti4OPtY6Z for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:41:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4E8C688329
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:41:31 +0000 (UTC)
IronPort-SDR: tvF7Nci1mIbG4ONcRGALrd9+38qF04SndNcPGU4b3ZlqTsWptjXSyq1pH3UQ5rLHxHZnqXgjho
 ZPzp38s6eyGg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:41:30 -0700
IronPort-SDR: mHifiHOc5t8b54VFrSUt9JJrTw5aPxVCu4j0Yr9xdkhVBL1qcEMtmsxvgr7RGiN2GgUC1sF99S
 mta6OCsWBbVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="292147963"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2020 14:41:30 -0700
Received: from FMSMSX110.amr.corp.intel.com (10.18.116.10) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:30 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx110.amr.corp.intel.com (10.18.116.10) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:41:30 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.57) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWeN2xGtlNx4x6Pe3Et4Ttev3mGwWexCk7/W0CjSyFTR5BWTXA1rFDR7d9zffWNroXwDTLwCvyZZxpwrYanXzmeg/EbVJOSm8/FYq5Utu7fPUdtn4u+hb5xiuz28ZGVFjLRn3FemS7JWeabvK0r5yohOfNgaX/auTgmYmFEfEsO08vsGFOI0wLLETl2MMKgLSsuxzZlc7o+WURFU3swMoNbehOdETSyXsKSFEfsCfAkvedXS/VfwBja73KjSVwEI45hHbNf64jScEwyleeAs+/idEfZEEgY58ijieFbwwiMuwHmL9bBEXnc2tFb3YftXeLyiMeU6SF0PTfYGmtwW8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o2XXi8bbYE+bYzRtnYd7bhXryzzuuE+Jps3ShN2CwJk=;
 b=BP6OmG+R5FB5oe5wR9nFcMVjxhS4o6iXWqq4NuqI/as4ccQid57CqjZOScPWgWO7nj7l/bDuEcS0zsKUdaVHlWqUdbo0o0/QwOtgFspbRcAZUPgZQ42wSMPIk5XB03CNMuQWSyf0/Hh8p/64wPDjj4GtlEK57mhT+oTDL7hlEjr3uxi3XRJ3FxOGMvHKXwtaPldVG6zEz1QoM9q4FSpwEnG6H1K5K8QArAJ2mrl8qcGRt3NsERS6KtNCjJCDWAmL8IrQAyi7NBOUMr+JzCOKBHLRY1RiFk0XM5oiSvXxVilnJ/TRPkJRBtCDciiCN1HiEFTkuXlhH99sw9jcKFtzSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o2XXi8bbYE+bYzRtnYd7bhXryzzuuE+Jps3ShN2CwJk=;
 b=Xj07xhKTPprCmh4B/tZGZVTx2tRpyXvKYKR6cMFVNe8D8B8LZ/khwt3wW80B5nSh5b0ZPAn53kvTNAnIC5XYK2EFflki4k8vRrY/HtNM1myXuRG6bPcAubtCA/9S/sOH+FwTYRkMhkofe75Mo/vH+RU2lyTQT13RNw3DY4n5mY4=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:41:28 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:41:28 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 07/15] ice: Add functions to
 rebuild host VLAN/MAC config for a VF
Thread-Index: AQHWKxyVuOEV6sK6gEey/k/kkQJgSqi+Gy1g
Date: Thu, 28 May 2020 21:41:28 +0000
Message-ID: <DM5PR11MB16591518306B14208CFEDF0B8C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-7-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3630cb12-21fa-4536-bbfc-08d8034fe12f
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB204318D624343D1263937BD98C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HAoVn7YSYBZyZCIxCc8QFeJruCPZbfRwcfmzJX0v6Hzg0WkAmpagXBjTXKtEZMvvEH/um2fipmGtgBdoKIArTs3GVL7Cbw+GYRcgNnToU2xvpReUcSFgcNiyfrGl4KrQhjT/+AsCUAv3CaQdjCh9MSXeVzx4fKcvRMXF7gEIgdbUQHX2ZuaPiUD93GNVG1cZxAocdOqgn+PL+uLyS4CmHgaUgnkzvE/nRyYnUVa4nDpfgh/u4N0GDUFwplDMQNWb9fwtN5YlQaUGmCy6q1sZvN70Av2RrZaQ5aRGM7sF6K0vhTGKt2SH02JXbik3Kv1dXohcqXe6hawC+8ZskTfc2A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: wwEq2fevJueg1gvRyl9Ymsleu41WJaOgWXY4N8CH/2JpZ4v9um+pR1G2j32z0Vtl5SoAMdyiL9nSKDbfHj9pSJlMJ6EuKpQV74nWs3I+oAfh9t9PFWE+XxxU1aYvoWNhJNdsMtOpOxEtrntTfiZX78e5+U8KlV/2Ic6q8PyAkoMNQxSH/DlOiS2HPRR3fIEV39YryjP1nsuPRITgA+kGWt7G1GGXliMFlhA35PxG3UC+QMMoe6dQUCFKvMr3rqxfcwESGrOP7iDwXK+CLlnEjhCCcI/9E5UYsEG+8IuQz87uAsQjqstgNrIqJs2FeOjPgqcv0akcq0ZUpuXxWrFoeZlKu+ISFRNmVO1ZY7fao82jz6wzCEoOR9gI78loMts/q2Rkq+7rL3z8fh4uAAMea7iY72bm1jGsi61CqGfOUYdRgnExm4LVMCsVhv3hCKp4bRkUIevBnBn/QhGCsk6HoMqY6du7P/GTnyLZVlamtJc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3630cb12-21fa-4536-bbfc-08d8034fe12f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:41:28.6957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /ySGfglTHqVHfCBa2ZJnoFqvYg3DJlv7QZWUo8tltJoizWXnUH5RBZR4l+767pBSL6OCZH9TG0y30/2pUIqXFlsZ9LPmkQNio37YayQRZKY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 07/15] ice: Add functions to
 rebuild host VLAN/MAC config for a VF
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
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 07/15] ice: Add functions to rebuild
> host VLAN/MAC config for a VF
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> When resetting a VF the VLAN and MAC filter configurations need to be
> replayed. Add helper functions for this purpose.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 121 +++++++++++++-----
>  1 file changed, 89 insertions(+), 32 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
