Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E723206ADF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 06:08:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 318F787592;
	Wed, 24 Jun 2020 04:08:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ehj4bPYnei6O; Wed, 24 Jun 2020 04:08:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39BD4873AB;
	Wed, 24 Jun 2020 04:08:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 38C081BF25F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3097B221CC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:08:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVF2epZ-Xn-0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 04:08:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id CCEBC221B1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 04:08:30 +0000 (UTC)
IronPort-SDR: LSev+egHbYaIJ/BspEccNkJO3wbbREgP2r1B+4n7iIwKNFzemwdd7zNLsRvKzNUf9vvvSKDrbj
 yUNPGcsLvkBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="205834994"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="205834994"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 21:08:29 -0700
IronPort-SDR: wxBN35PN3PYEpGH6CMdUKuUuJfBN7aA4z6MBeO7fcE2TJe6n31FzM8NbXUIFNQn/jfPVkWQ5ob
 kEOnm8FWhPhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="311520600"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 23 Jun 2020 21:08:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 21:08:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jun 2020 21:08:29 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jun 2020 21:08:29 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.59) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 21:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLDymVSJbu3PC2MMrkvTE1HOFdiOd25/NlJJ8OaVE43POnq5asfUTICdKxTlpuMYl0Xuf1mChgoJXh2k+OtakqVRPgP8/c607PtMxH6xYohfsSzRe6xfKlgL1p2ZTuCrHi6/Iyv1IPu5xdEk5nrp4Kon0jiWfkr3prk0PgUF7sBluSCo100jc3t4NtoMwIQyALmn8eFRkwbaQkBAX+2Xe3lyZtDebZKVKo63xC54tPItNT/7eEESNDDRQ9eGGfUbZExvEcUrl4gaq9Z83XrQDR3jVrtrVJRka7ANFcJcYL9MmNYZ+CnZgN/9zt0m9C36ZumMDSH4F3GjzRh/wsRFow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=407/TK5ikIB8tO0yVtbrgkOmGhzIN9yLW9JVw48S8Gw=;
 b=XCZ/7RCe+eo61ixZmNh4JSFpinY9ZaQw23AQFkaDM9bQurx/3me5naMlEGutSWNHuaOCSxtVA0HFJlT5uo+SmiMyyN7zjd+njos1TERdyHG0zWtHJ4NbmHcFHqgAn2UIErt+n/0Bx4ym6KmzQrPKDl8fTs5FOsqVSrjE4goPVzFx0QdSbolonzJ398pKGr+I8ePyEVJfXbOiZOVz6KNfoV7eJEt0Vc9dxAWryQ3ACaC9xQU7lf3qYnkHC99aBnljOu6t0oR3ZcCXUFogEqit4/NeImGSqAvZ89bh95Jr3QSqFvugDGwfGAsfrPAs00G2hnxYiJztVtD8K9MAsMEseQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=407/TK5ikIB8tO0yVtbrgkOmGhzIN9yLW9JVw48S8Gw=;
 b=oeOXFfXBo+xpyIBiwsunF2tnU9JCGkbgrWhMiQeNE3F0b/HOTHrQdnUxjiUzRicoiKzMAuz88yzKI6MVdOQxoltJTRMIJpctMFLZY9Xa1/UduusdM0MaWdK8mNIdKU9AXmHA7ZLu5siQNdKukDWEpVjKjRwkmM4lEMKn7D/QHNQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1850.namprd11.prod.outlook.com (2603:10b6:3:112::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Wed, 24 Jun 2020 04:08:25 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 04:08:25 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation TX
 fail counter
Thread-Index: AQHWPKjlruhgUDIgcUS5iWfNvEsWfajnD6aQgAAkXACAAAyUMA==
Date: Wed, 24 Jun 2020 04:08:25 +0000
Message-ID: <DM6PR11MB289068AB8C5E4328133CB236BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200607085127.29281-1-sasha.neftin@intel.com>
 <DM6PR11MB2890FCA0CC2C4D5BB701DB3ABC950@DM6PR11MB2890.namprd11.prod.outlook.com>
 <e85dca2a-0fae-d8de-f367-21050b694c8d@intel.com>
In-Reply-To: <e85dca2a-0fae-d8de-f367-21050b694c8d@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 045b0d96-b49d-49de-fe8b-08d817f43dfa
x-ms-traffictypediagnostic: DM5PR11MB1850:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1850BC156CA1E9C3CAB26917BC950@DM5PR11MB1850.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PzukLkXO9BkOew0wM1rzwm9OvkpOL6WjySpznQWHdDoFZrmE9A03+bcbV9Mxg5XuC6z56AYLzjvfuY6itnMGUxtiB8kxKNv0ZaAd8J0fjxhr6vfObcB6HvDmYJyNSb0U/1cyWgOoFwp6nfBB80r9lWc9dDMiqTpW1LdatEQ0Am7lqgNB2dplKZsPuzrOlUPfVwwH3WpbJZ3qY4K7p9wJfDzxfyDH8ggxDJybUnn0XozL0XT+uS8nDvHs/I/IMyGCUhj9a+UOaz+y1xiUe3soEAaz6RJGZVl0T8wJtqyUrtU95BMWzof+/cSwov84UIT9ebFFIr9ppO407Jm3xeYX3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(136003)(396003)(376002)(346002)(39860400002)(478600001)(33656002)(8936002)(8676002)(26005)(6506007)(2906002)(53546011)(9686003)(71200400001)(83380400001)(186003)(52536014)(7696005)(55016002)(5660300002)(66946007)(66476007)(66446008)(316002)(66556008)(64756008)(76116006)(110136005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: J6fdpwPqAECenFYlYdpuOxmCu1nWJ2q4/8pmGMnolKTkmHYwQFbS++454vz7nPpLQgdKxLZWx9/0i0LHn//x+Hiq2YB3Ql94sc/1DlFwNJjwlFTHwLz/vxoI/StYjnCAmTictTMcb4/smMhKxWIuXb2UITQ/74ZXj9vSmFoVyLFk0gYWzgHrJ57ZqswxsyBaJdqDjrqJiUwMvXgK5s9fA1N7uar/3ni7pHyR9fWbxhbNPGBKhn5mEFbHvkhsZOMjPVYd/pASDawdQASa1gXSBd3fIvsnKWHIeQRd1p4kqLzDBYEDMW2XVpxcIa+vibGiIK9kcAvZYUEz8m6Q+U+vaVzlDebaRSbots4gEMDvX8XZauBks2x2qCk0A/LOlOVWzoeaYfSA37ILChALJ/m7rrwzE5mRduOlL3HPODISudZTbh73w+e0lbHn0AUzHFIo0v2y6YIIhq26Ru/xQWiArO4sLor3Yo/2sBjb0RhZ+fBMqM9cKDkVCVJC9bjmW8Oc
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 045b0d96-b49d-49de-fe8b-08d817f43dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 04:08:25.0834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EX9kj9XULu5cJA4dpC7lYyIp4fcxZ7HF/m57WKXjwdgtEf887fGfaZfjlV/AVLEUa3Maxzo82l4E05J+dKWmdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1850
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation
 TX fail counter
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

> From: Neftin, Sasha <sasha.neftin@intel.com>
> Sent: Tuesday, June 23, 2020 8:22 PM
> To: Brown, Aaron F <aaron.f.brown@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation
> TX fail counter
> 
> On 6/24/2020 04:15, Brown, Aaron F wrote:
> >
> >> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of
> >> Sasha Neftin
> >> Sent: Sunday, June 7, 2020 1:51 AM
> >> To: intel-wired-lan@lists.osuosl.org
> >> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Remove TCP segmentation
> TX
> >> fail counter
> >>
> >> TCP segmentation TX context fail counter is not
> >> applicable for i225 devices.
> >> This patch comes to clean up this counter.
> >
> >
> > With this patch include I am seeing what appears to be the removed
> counter when I look at ethtool stats.
> > ----
> > u1322:[0]/usr/src/kernels/next-queue> ethtool -S eth1|grep seg
> >       tx_tcp_seg_good: 857
> >       tx_tcp_seg_failed: 0
> > u1322:[0]/usr/src/kernels/next-queue>
> > ----
> >
> > Does something need to be done to strip the counter display?  Or am I just
> looking at a similar counter.
> It is ok. You look at right counter exposed by ethtool. I've removed the
> "TCP Segmentation Context Tx" register not applicable to the i225 device.

Thanks for the explanation.

> >>
> >> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> >> ---
> >>   drivers/net/ethernet/intel/igc/igc_mac.c  | 1 -
> >>   drivers/net/ethernet/intel/igc/igc_main.c | 1 -
> >>   drivers/net/ethernet/intel/igc/igc_regs.h | 1 -
> >>   3 files changed, 3 deletions(-)
> >>
Tested-by: Aaron Brown<aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
