Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A79E82443DE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 05:08:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4435088814;
	Fri, 14 Aug 2020 03:08:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PWKAzoIk0Lrc; Fri, 14 Aug 2020 03:08:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 874898891D;
	Fri, 14 Aug 2020 03:08:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4C5E1BF34F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:08:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A8D1388822
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:08:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hD0Cksc2ZYrD for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 03:08:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1D3A588814
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:08:52 +0000 (UTC)
IronPort-SDR: 3erGNmPxTctiwM24yNdFDtZttpkYdAn9sxSyX7t9U6z/zqG9Ta513FuBh/FtVOUI9uf51HoPT8
 6Ijwzl6BCRUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="239183367"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="239183367"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 20:08:51 -0700
IronPort-SDR: eO0ffOR8OBX6Td9MxxfV9yaxRiZ0fAc5w1FZAJUYa3Fs6vhEFrAftf9UICL2ITKOlQZ55xIf73
 e9JfnR5tR2Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="333300341"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2020 20:08:50 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 20:08:50 -0700
Received: from fmsmsx103.amr.corp.intel.com (10.18.124.201) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 20:08:50 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 20:08:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 13 Aug 2020 20:08:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pbk+JhKB0uGEM5rIz6BZ2L0yPQ1sOnxmLKiaXsTa/TQTTBMx3MB8R3ixlb30EjlQge0a59g54MDllZ03Ko3VsntpvADWGRIv+MNquIxaKYmXHUV0MU/vMP9q+35uL4mQERaIlF3TM6j6Xj9KZnjCtTYuLlWMB8W0mNhklRlybYL3rQRN0wOxYvtFwjZYPMX8x36Q7I2y2RzTfJailiT6kjomlM2enY5mUTI6nygK+LccwBJ4k+CJfDxr+4+/IbQ83Qxn4PBbLhqQvtgPCyZiLHiu+u09xWC1Sf5anf2bd+7bY02WYIrur9QH7qML1IkmsCArpf3NXZnxOPUB7Cblmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tOiwC170cLO3rGRQ0J2+8kMgcft2Venshaq7Qc42GI=;
 b=XGseSqLbvb2FMx/Q4Y6OgjfYmA8zrgINiJ92pxGwaeY1ilm1okMH8JwDdkgJWpDjHL56FgIxKHWjJK/uxRfmeAdAxVj7nis9JN3hjvxRQXfZXZCpgd3hpTSXoU10iqiZVSFaahzQsQ10VoF4eceSvWQyiOqd53UJFmHXUE/HAC1lS3JcU+1lNYCMGE0vhUhmUcX63s+dgzYxtOhM1S5MzbzVtInoMdclMCZr+VydH9+FbeA531Wy0MbHy0hm91a8f8JzPM5gSQlSpWrF+RLZpCgq7sINCjfZVy9Y3Ea305/ox2JWm2u2/hAOtHy8JGbid5w79bniK5Nu/vJCBH3wdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tOiwC170cLO3rGRQ0J2+8kMgcft2Venshaq7Qc42GI=;
 b=aELAzdqIvPXdJr5AZwM4cV/bOXiUGNobNyuC6hEg/9Z6duHaJvdyFVG3wJLe3lZXLCRSYK4scQkH+F2AQodYR+zzQmOywo13GUXtVS2sIA2ympk0vSLVq39QCiUfFPticV3p26pEtZsCJYqRuaOZ1fkAqe13We/PsuR2oaQ9zAc=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1689.namprd11.prod.outlook.com (2603:10b6:3:14::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 03:08:47 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 03:08:47 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/4] igc: Don't reschedule ptp_tx work
Thread-Index: AQHWZTg3b4Y/tMwQyUqOSYw2vqhwMKk3BeAA
Date: Fri, 14 Aug 2020 03:08:47 +0000
Message-ID: <DM6PR11MB289000597720FD7185422F72BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-3-andre.guedes@intel.com>
In-Reply-To: <20200728233754.65747-3-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6243d10b-be65-4496-d285-08d83fff5c7c
x-ms-traffictypediagnostic: DM5PR11MB1689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB16899C3D59E8EA8D2DCFC7CABC400@DM5PR11MB1689.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /71f07QAfN8X85WmGfrwHO/jRzJawa/t4lHjuXftCXg7QYWOJpXXoRzacaDqTdWGGjMgQF0TFPesJHb6wHT27VBr0NyBx52Dkfkd41fXHub8e8+rG8qAaxPzLpEYg5RoUQNKqoXtfBq6SWdppTkuM+O7Ddqijzqh67uD/8DgtqF53gJfgEzdFk3Sec8XlzPaMfxU4g8ASg+h42li/ciCxu/HXaCo3RJO0DiBWwQoB9ZhG7JrB5d0In9RP9Up3CQyJc5quZ1ac7wbVNzH20A2VxNoFVU8zsxlj+pJwmvEJprh/H5y3hm+GNxEjSZG6DkJWu6Lm3hMfnUo1GViabRYiQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008)(55016002)(33656002)(110136005)(52536014)(5660300002)(2906002)(6506007)(53546011)(316002)(8676002)(8936002)(71200400001)(7696005)(9686003)(4744005)(26005)(478600001)(86362001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vTR/0zIyy+bN30nY47Bu03BRQ8vEfxo62ntJI5l/++PGu0WyAOPXjHH+zlgoLiAOBRqIXw5imEDSYt5DoGdpZmHjOU4dZcIUYWyTBeIR/ahtiit8AiHSVNs8yrd7VehCEOeuFaFKOyTIh2dVuHe8gNGTY+egse7o3BDfhcU45s9R9yARP+KZyDcrl4SuZ97LdUp1Jlsi7OYCfQV6fDj50Y3OYogvhXZMHh+se71/jTKkhULH8AnTC6LDVgicgdukE9GPlMcBB+q6nuXv8e3jVs3bFr7dfiGCf8GogzrsNaX/K6GXp+HdjUM3qaIoyI3Z74db6p5H0kCt46POWsGHKM/4QFraKjpSL7ggNQ9JiDajnDj9yKy04BGIwzPwWCMmQ3pfjHNOjvq6CTAgzIp0btiSMFpdqMYjij4Xhjhw9dKfgy5wNzJJ9NAFedstbwo5G2BY7d0mRpkD0sWbsYxEtirBcYW/Nhu2BhCRDtKlQVy4ppoLr05LvIig0GT/MdxA4V6gug4rAynzq3iNu7AyKlSpaAwseWSADpl/bwufkWM3vTHOfTB3jYVLs9niWDOhLATD6u2sLCWWWngP6NKN5l8gwiEClAhbDRdOG3nrIHGduONV0mBmpv+MEfPkQVEvYTLjVJoqeXIacadsqOn99w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6243d10b-be65-4496-d285-08d83fff5c7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 03:08:47.2370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1RKjsVLssXUGC41egBHZCY11jKTWFIi12ShGLxaWAH4/zgLLljZfU4Q3P4YLWE7iSFIRUh+u89TLlFO5oFMqIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 2/4] igc: Don't reschedule ptp_tx work
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
> Sent: Tuesday, July 28, 2020 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 2/4] igc: Don't reschedule ptp_tx work
> 
> The ptp_tx work is scheduled only if TSICR.TXTS bit is set, therefore
> TSYNCTXCTL.TXTT_0 bit is expected to be set when we check it igc_ptp_tx_
> work(). If it isn't, something is really off and rescheduling the ptp_tx
> work to check it later doesn't help much. This patch changes the code to
> WARN_ON_ONCE() if this situation ever happens.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
