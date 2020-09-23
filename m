Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53248274FA8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D63F285E8D;
	Wed, 23 Sep 2020 03:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRotCoU_BYG7; Wed, 23 Sep 2020 03:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D86A85E93;
	Wed, 23 Sep 2020 03:48:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD1E81BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:48:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C89A185E7D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:48:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6T8Iyk73U6Yj for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1591D85E40
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:48:01 +0000 (UTC)
IronPort-SDR: 1PPE1YdBuz23DzkOL0vMwmTm1nq/08w5SSiwKejgKOVlzSIgA7vbF2mYmdbYEWEVsBcblFRSUb
 ms0yEl5noJ3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="245606690"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="245606690"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:48:00 -0700
IronPort-SDR: +fij3mEHiRCbErbkbDLMFKKLN5jsBZoOIudqmFdvFhWEDLPAD/mnEoImT/jaJYmjXBKz0uvrWR
 h0DPF9+zEQAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="348737792"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 22 Sep 2020 20:48:00 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:47:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:47:59 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.51) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:47:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BO0dwvzT+QpJ9K53MTa8WHz7BP9sQoLZPFM9ixd/7kRCzYg4NlQ/aHugIk/GVyjvxGxXNweJWQnefdFfKRrHoEENroWrCnKvlaVUP5gfUg2r+d+1awY0y4xE4ng9+RmEIOt5hznF9d42H/fe5BG9N6f8alCvX0fZfIv4/LlhxKKoKDDeFJ52Cedhyt9hirtuV47K+/Y4kJLFRImBiv9U+RtKApBWA0gmTENTl+QZCeZA0Wu9SyPceQ9LhEfXMVFuy/CZ+OwT/4xtL0s9hA2lwT8rJagFTd2Y9AGi7QONpGB7GNpyDJbrJssNk4nG//tuyXl6BUe3Pk7kxkGMEWThSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+P4Ynxg7UWm5R0zOFSdAg4ecWwUfPj+l11Qg/gGuiAs=;
 b=gAMeUOjKJCt/YXqGFuPj4VdjRD2qrMq2zHzo70aOlvJCRtFAM2JYK5ZSs2sQcrmTWDJRpjjQbefwTVtRX+f/PjEdxWcq7KupWrkgyVl3LuxOyDRbqS6M3T959OtTc+XLLP41evn9/R1rZ70Eh5NvAWNy0MUNrfTvZzfw1yuzzUl/jd9i2OlCQnXkrJck9nOLy473DNsBQJ+hX0yYevUZck/nx2Xm1Y2kD83bv6JZGDSR5pjqLLV3dYTL/W+pr3hqP1DYH/3xf9PWHFCNpTZPrlSSWRsDVbFJd55Wv1uAEoiGg9MF1CXrbA5bD2L3ltMMUHlrYe3m0sPEg2AyNDYNpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+P4Ynxg7UWm5R0zOFSdAg4ecWwUfPj+l11Qg/gGuiAs=;
 b=aKi9TlyhVgZIEsBnsVJucSdpYlNczEPEkk5+twrG/8HvFvTpuveE5SaGS4zeZDyhFfW6GftvBvS3b6ueeud1pIC45Ipn3ZKOeaGWw4s94kS/1nVn9FreGDk9unPH+Th8s/NfTayPLzA6SmjlhPBQR3oTqDEscO3e4X3xVArQGBU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.15; Wed, 23 Sep 2020 03:47:55 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:47:55 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Export a way to
 read the PTP timer
Thread-Index: AQHWgYIFdVrDN6LrXku39Lrg5M6rEal1tX7A
Date: Wed, 23 Sep 2020 03:47:55 +0000
Message-ID: <DM6PR11MB2890E75BC43AD05ABC49F4D0BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200902233657.4051914-1-vinicius.gomes@intel.com>
In-Reply-To: <20200902233657.4051914-1-vinicius.gomes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 332bd5a1-8f44-4bb2-8c4a-08d85f73748d
x-ms-traffictypediagnostic: DM6PR11MB4380:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB438019694F015D63217B1517BC380@DM6PR11MB4380.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JhkY3H63hNOmRivckLgA5G1uw2O8AybxB7MChgJ7ZeX9/N1+7MKfRHqi+W3miOmS7VuMrWHP8I5/eTvsanKZZfyq9Wi5Rv4FZA3MOMoXiWyZcLsZF0XPJDA2NwlV+uP1NScS8q0QXtvc0pvTR2ZpGp7VUsywzOoiD20Op5hHaT6QiT5XEJ72fnxK6EMQ+OW3d009lRcES8D+kZwvlW9vACn5SqflYxDLB5iRHI683KXzCrJsW8XXt7S8kbqkj5fCSbxOPkLW2LRweKhLHg9IrwBcOsMW4ltO2jikgg7BhFt58iDfU/DqjzZT50rHy5swdB5kZuNHjSwmX7Cx0kD2S5G9eSw04bu0oRAxIn727MMQXRvyCZMapQQr55+vqK7Z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(396003)(39860400002)(366004)(136003)(5660300002)(8936002)(66946007)(478600001)(71200400001)(186003)(66476007)(107886003)(4326008)(64756008)(66556008)(8676002)(33656002)(66446008)(9686003)(4744005)(2906002)(86362001)(6506007)(83380400001)(76116006)(52536014)(316002)(110136005)(55016002)(7696005)(26005)(53546011)(43043002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3qOB7wk8+uqWYkbRgSg/9kC7qsdhG9rI09uZjgBpr1/WMcxops6Z2Oj7PLLHqkKL1pD/hmS0V2Au7Fk8eMPFeUZw2V6eXLRg8tvFV3Q+GyNCRQfL2Ofm4I/NPX9swLrO20/xLixKs/93ua8dRwdoqLq2YBUYbfsSaaQAakNl6PmPOhekh9Hb6dRUP3nHMV5BlkQiMh3r11mFVXzo8X8mQ1gDlr/u+YV/fMiDsjKIMwMfgmoIhno/m/+4FOvO1I73bbcHNwfaYHTLtp63CIDwx6DIibGw6S4vpQgUlU+2sDz+gQLa5Hkc6tbOWAKnP+uSjCbf3i37zhmb/YE4i1qFoqbzkVRafS2lMCNUtSGbbFvs/+PzBoOKaHqr0g63HrLgTgkHUpXJwXxiCzX0WBz6zaMoGs2SoWdpEiruHQXtC+EPPtTTSAGz9uxymMkNHf8xp7gcUmnBejN84FfdcT0vBop7qWBnoEVqVtkXnfCm5yRJxDWjBTjZxtSTwMjoY4UQfFffshNpbg7d5Y1Gq0hD3HHXGiI0QEeCa5UPmiCFr8xLv+qpjuclyCvarLLQ3vtVqLGq25iqzBltGx+EvpkYl+0vMyg4vXWiKg9CwUaCk9mFBRvwWfWu+h7vc8+qtktjotxbRBnagFuJWRYx6A5uYg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 332bd5a1-8f44-4bb2-8c4a-08d85f73748d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:47:55.3416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7B380ofhwQXtgk7TDgda5bbIrAxguf43Zh/Vnac0528ywXTY2MUM0h4lbxLZYqV0m7pkDgJce6Jxxci1HQF2KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4380
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Export a way
 to read the PTP timer
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
Cc: "Guedes, Andre" <andre.guedes@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Vinicius Costa Gomes
> Sent: Wednesday, September 2, 2020 4:37 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH next-queue v1 1/2] igc: Export a way to
> read the PTP timer
> 
> The next patch will need a way to retrieve the current timestamp from
> the NIC's PTP clock.
> 
> The 'i225' suffix is removed, if anything model specific is needed,
> those specifics should be hidden by this function.
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h     | 1 +
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 7 +++----
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
