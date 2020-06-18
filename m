Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8C7C1FFA0B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jun 2020 19:20:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 883AB889F6;
	Thu, 18 Jun 2020 17:20:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CexRjl37Xn9B; Thu, 18 Jun 2020 17:20:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F12E788ABD;
	Thu, 18 Jun 2020 17:20:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF3D61BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AA6698951D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VNRjkC4obfCM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jun 2020 17:19:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0719089511
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jun 2020 17:19:58 +0000 (UTC)
IronPort-SDR: OqNtjARJyZ5dCvLL+XcP3BjuNt1IlN9z6s8kYuFoJ7EaX/JPYVcHiYoA0DVmJmQeXVGWBQvta5
 5PymKD4Emxsg==
X-IronPort-AV: E=McAfee;i="6000,8403,9656"; a="130016304"
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="130016304"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 10:19:58 -0700
IronPort-SDR: JZEBCic6XBLHnkp97SxmJ2A5T9HtwxtxryMl5XgLIv6oMgLsD1UlKwNvC1zaPPrq9da0dPLoDd
 ihMrIAkQxrtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,251,1589266800"; d="scan'208";a="383584683"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2020 10:19:58 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:19:58 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 18 Jun 2020 10:19:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 18 Jun 2020 10:19:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RF3Yz5DsnZNLBKCprDqCdh+WokpRw3RKK2qI0+bZu5s1bFysvcODTdGRw/+9FMUs9aQLKHLXaSPrM6fMMAidxsaFeeR5ZCR/0mUePOp4o2wlfvozZd00hRr1AfBdAnr9tZXcjfFv0E0wxTaXAurw8XG0NyR95PUhg9X7CvT2Duo0IJ2gfy4z9MqopkbE8TFp+hxOS4FoaUVE/XYSB7jD8Pfm23D/sQogPtlySvLAIDkhIUWNlmxSm6BXFtITJ2/nxkNeulWR7MxSfTquMqHE8GnNx5B4DK+5cMWUaVJr0xxSGQ7kYRW3uQy7Cf3ZB8uVfNZnoegg8g2MjYmt2+IJoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNQ4CscN1hsIlaEiyxnyW9KZ1Hmn/B+NBoVBgIH/DZE=;
 b=j/yWQGxeGy4LMliR8PomV66mHRZHkbleGsX9FwlSatsdHpuSiL2f5dPm1f7owIkEV+54scOFM82mrB5cnRjn/YIIEt/VN3i/jMdSyIWDTZpQXuqijEFvK/zYOty6gYfzJ/H0TmtP8w6qLz2vILjDaf///KSfDNrOdwQYqh7OGF48Q9dhCYl32N2K1hy8zmh5eVkXWICya1gRyqzcTJ7QuLmP/hyPT2BOgAzPGFO0HoyHzsbdzDoNOALywlcLxHODycg+Ur2EwULuC2IpaFOI70wONtWhixCJUeWadYjE9yHVI6UDtZYNDWyMq+DDlA27goQvafkdmIizlQV4RQAlHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pNQ4CscN1hsIlaEiyxnyW9KZ1Hmn/B+NBoVBgIH/DZE=;
 b=RzQ7MU2lFlF64MceahPOjMux2LTmyAQqFwEMeUKKgK8SLeTkymvhMfDbYKp8nXeVQ61JIHIEbfmpXiJ1MOcSAunYUBRriMnqWSuWj07kWxAPJPj08JCfsa1fUIOcRdZopS115P1eqcQRnvtC6Vj42F2DrcD9yJABIyInH2mg5EI=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1259.namprd11.prod.outlook.com (2603:10b6:3:15::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Thu, 18 Jun 2020 17:19:56 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3088.029; Thu, 18 Jun 2020
 17:19:56 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 6/6] igc: Fix rx timestamp disabling
Thread-Index: AQHWOgN2gMgiDC/KW0WeuZw8rfzAt6jetUJg
Date: Thu, 18 Jun 2020 17:19:56 +0000
Message-ID: <DM6PR11MB2890FCB8221C0091075DA502BC9B0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604000105.15059-1-andre.guedes@intel.com>
 <20200604000105.15059-7-andre.guedes@intel.com>
In-Reply-To: <20200604000105.15059-7-andre.guedes@intel.com>
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
x-ms-office365-filtering-correlation-id: f920e810-7c61-48e2-2b72-08d813abd299
x-ms-traffictypediagnostic: DM5PR11MB1259:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB125994AC595D349824EAB0C8BC9B0@DM5PR11MB1259.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0438F90F17
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hzSTcv94veaymUKc3sozcg1EkJSgAHVrgFVtgk5G5gbFv+VKKu7U4dG6EOIi59io+2NmFUWaPZl8jAX+6BiVwWJA+rIX2piK4SbzEIk6yBIVwmud1JwlGrGpCIGP89NOfAaUlt2wgHAhjos0GoWaKxYBO+i1UXHDpHCfhXp7FsErvRm06Ui3zEYhxLFVHQyD1XomGrYa9f7x4j8naakyiA/lCGM4o8adxAuiY0zCfYhfJqI+7K7lCIMsz+w+nAuve4bJHqWyHuIzpVOFxjzgzag4gxiPJIRrUwjveZwKWcuK04PngTmDSmNHNCQPs16oldAd1Eh/EVfkVZ/rvMoDbA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(346002)(366004)(136003)(376002)(8936002)(478600001)(55016002)(2906002)(86362001)(4744005)(9686003)(8676002)(33656002)(64756008)(76116006)(66946007)(66476007)(66556008)(66446008)(71200400001)(26005)(7696005)(53546011)(6506007)(5660300002)(186003)(83380400001)(110136005)(316002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: NHh/DoxOZABcK/JLAOVc+YaITNKlcNgGTg0qBRCQUSAGjD5XMtyVYK+n4Ay8c6IYpHnmyuKnDR06hKMwiW0DaaLGHdL6B7RmoiO8wk99boi2DXh3ymPboWIC2+qY1tUkLHfV1xUjcOezA+qc+53TDU5tCHhj4lRFlFeJ8vWN+HmSuGHKJUHybGb4uytURZXUT0vJlNykvwCe+YbydGTgcP91xw8PbW30J09JxmZ9W2LGlu/sV/JSVGSkYcruLyV77Ol/Ke2obTtP3oZCtP+M2ZxkLQ69nnusujn2wZNwZK9WBqgq4qYaRY2V4c/Lcs1EJx+LYhzDlaX8NaYcAhgW7HLAniDDVXgzpVyGsWqJuNzrIMCXAH1/vyYcFl9KvW8arp2GLX4n0w8RLi+tkp5eD+8gJevDXMyLX2usqhLswOlr8TV7WwG76cwMt3H0uER9A5/dfpip4kH+2R5INp+VdF79DipX1Cka43rkAzNB156d3DrvnzGSyfMqwXpzC8sd
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f920e810-7c61-48e2-2b72-08d813abd299
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2020 17:19:56.5234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2CZ1bMik2LOmx5dRVDO0se7bY+gkLi2koeox3m3wl/IRy90Utje2v6wKC+CRNyPdoPjP0WuOkd/8+8VmXMnlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1259
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 6/6] igc: Fix rx timestamp disabling
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
> Sent: Wednesday, June 3, 2020 5:01 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 6/6] igc: Fix rx timestamp disabling
> 
> When rx timestamping is enabled, we set the timestamp bit in SRRCTL
> register for each queue, but we don't clear it when disabling. This
> patch fixes igc_ptp_disable_rx_timestamp() accordingly.
> 
> Also, this patch gets rid of igc_ptp_enable_tstamp_rxqueue() and
> igc_ptp_enable_tstamp_all_rxqueues() and move their logic into
> igc_ptp_enable_rx_timestamp() to keep the enable and disable
> helpers symmetric.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 54 ++++++++----------------
>  1 file changed, 17 insertions(+), 37 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
