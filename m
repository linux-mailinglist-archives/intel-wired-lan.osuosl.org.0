Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D6E2539EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Aug 2020 23:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E22B08805B;
	Wed, 26 Aug 2020 21:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AOZNmF2tnW7Z; Wed, 26 Aug 2020 21:50:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F17C787F43;
	Wed, 26 Aug 2020 21:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E62B1BF37E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:50:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 13A2C227A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v3HXmko99olk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 21:50:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A2962266C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 21:50:33 +0000 (UTC)
IronPort-SDR: dMolhLg3iLuiFR2xpcZTqeHjXJ6ecQIO77+JIhwLsF4gf/IB2g/ht1p7PmkGU2pTNJtrnWTP8Y
 0hOzsF6eRLug==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="220642104"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="220642104"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 14:50:32 -0700
IronPort-SDR: txo/sCP03MyNZ3FFev6m/1yBdRtxuBbJJJAPtq3GI55Gdp6LVzXlROkzEyjX8UyKEfyMrexqZQ
 IQSFpBogszZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="313020288"
Received: from fmsmsx604-2.cps.intel.com (HELO fmsmsx604.amr.corp.intel.com)
 ([10.18.84.214])
 by orsmga002.jf.intel.com with ESMTP; 26 Aug 2020 14:50:32 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 14:50:29 -0700
Received: from fmsmsx123.amr.corp.intel.com (10.18.125.38) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 14:50:29 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx123.amr.corp.intel.com (10.18.125.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Aug 2020 14:50:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Wed, 26 Aug 2020 14:50:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e/hOyDUf10K5y1bwmwnbRjnF3n3krv/M7TN6ZuIyF4QihzLhxV2JBqiVZyZ+zHOXBESilAI2qouLcIyC+8yma+tdc3mayvl5tc5wAWSqK0FjisXIDBn8578+7Pr5f8Ass5n9UobnMcKxER5g8YbGI8K2rf7QAP5BkWIXOXuvOfsrUWoYKQDPMUAdblS6jpLyDJJFAiW3aFANRgHEoFS1XHZVMR843r5pJ84fdwI3+vCJoZcXOfrBZL7eg3OV+l8MsdNt6wMeSwePD2+9uHm48c5PDzlLD2fmvy8ZKBhc5kdlS1Z0aq7Fo2S96gRePotKuC1rNeaj6DoU5Ol26Bu6DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q3Bh27+9Pp6+MIHqoS7JxGPAQxpHi3P0DLGtTyJC6xw=;
 b=IjSTGVJOpV2qXQcTQDloy5aInVVi/1CB9d9EUqzPjrq5/MbUK8jJb8j3zihv47+/QcF4wn8R2BLLPtQIJa2ADgo8NnDzYOGAaotpSLnP80BsxJJhF7S1itlB8gL3M4+Znav6Qj0AUbCHlor1RaxuuG035Bl9+5+QfVYH7nEgDmYAkwaEG3sFR5v/iKhBvgagXIPvgBmEAYgIcIZBI/HVxMvoOdArdtLxzfUVXAh0pqWG+lo1oIwgP8Ajmw90QdCftUy20+Kuzgs/84GIuF1mFs48iQ61wLjrHepqVlbAK31QzSr2K8WQ/GEZWI2JtIzbhJsuqSVbhcbrJ1Y6j9tAUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q3Bh27+9Pp6+MIHqoS7JxGPAQxpHi3P0DLGtTyJC6xw=;
 b=ly8C6vaVGnGrMg6ROX3Egk9TNuTOIpdDtbiGvZ9yTDndzJ8HzkfGX4wdWjgmBtVnbgqFb019t+KvLHvXedSDK6adWdh13oYajxYlOepOBgpb5Ggu/kDQFoQOFkaSAIWiO7eCPy/tJPvnZSa7CShG5D8WaEvCGZCfykmYU27TUJg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2569.namprd11.prod.outlook.com (2603:10b6:5:c6::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 21:50:27 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 21:50:26 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
Thread-Index: AQHWcYUUtw5PZwQhDkSHQUxhmIMsk6lLAqig
Date: Wed, 26 Aug 2020 21:50:26 +0000
Message-ID: <DM6PR11MB28901824833072738FF60801BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200813151815.2970941-1-sasha.neftin@intel.com>
In-Reply-To: <20200813151815.2970941-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 309b36a8-fdae-4ed6-974f-08d84a0a0b1f
x-ms-traffictypediagnostic: DM6PR11MB2569:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB256966714D83A497D6147742BC540@DM6PR11MB2569.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:83;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nhbbd+yLUPWwW9GQ7xrhovbNso1/XktuWFqyPsO7PPuuRkU4ax2GjiJC36WDzHyceJuXwCDKxfpLUWCBSqJIXALnScDiD2Exn/YKNEVALRsPoV7yj3ucWdKEQyTnrbRiKIXxBQuSgP4wyHMK9kA2oOihE1gLjnoPMN8hGrLP1EVm5/VWWrKruWpUlWME/Pb/i09OXw03Ek7gsR+mV0jwUQtbFB1u3cK7mb20MMx01rzZ+XKn50uVSyOlVzTNQmgRYwp7bqYPK8xOI0wuZD5Xap7f8drvaFI19dz0ifghBADM23w9pLCt2XJ5FaaJY9hv
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(396003)(366004)(39860400002)(346002)(2906002)(4744005)(55016002)(66446008)(64756008)(66556008)(66476007)(478600001)(9686003)(52536014)(71200400001)(66946007)(8676002)(5660300002)(110136005)(8936002)(76116006)(316002)(86362001)(53546011)(6506007)(26005)(33656002)(83380400001)(186003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: AWlztzQMHspQsiGWVkyzYhwzdjZwHH8odNzuYdsgMX5sgaLMzLGkXfel85RVvKW5NLWHurbpWp8fED1ZZjXoOEV80B8lfSGgB0Secb3QX8G+FpNZBqZPOgn1lnT7S1gYS46lFjfh+eNIZ47t9pAe48Pjo0Vsqj4N/hZD5R3ryqkl1d97IJX7ThBhX8BthWPauQJhk+X0jAE+p4hFab7bLL1Fny540AVy6WpjtJQ3IH8soCKbvd3dVGPFmrJYOTtMttHQhAydPtLpUo8nrZJ+NSgr6U9oynayN0+K28EkU12JfyhwofhbfApOQdI2ckCHHK6bAHOKl8CUSaNepXQD+LBycWNjW2OsAH3ZE5RcQ5WvfY0QbON0o9MKLSGa1ig+JpaIYQoqKq/mFKQyqL5GI0X4f0FOb+izbAxBv7BtQBPS+fvIRN975PFf6bpc3Uqtzt4Eu/E34tjGB3moH3ZXg6A1mSmcgpOmHRMkBKKRD317JAU/F0pYUpixrxoI25IzwMvFGg+So2aCmgykq2vDopMqnDh/Xw2DKtevQFSyE7FksHdJrB/LYCkItiA7XfGpWwDp9FqN+Aa6jyE3d/TMVBINGrAnJf1FXhNmKTgtTzhALYeULPieDabRJLDY3IGveX4xSHK7biFs0Idpg+ORng==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 309b36a8-fdae-4ed6-974f-08d84a0a0b1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 21:50:26.9063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c9oo3nuc5tMmZNUX32hWrOjVXejrZcM9DnKtq0xfvn2ngJXtQ4yt8acEEHlAy8JEUJfFEa/KqmSv4z9sHIJ+Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Thursday, August 13, 2020 8:18 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Expose LPI counters
> 
> Completion to commit 900d1e8b346b ("igc: Add LPI counters")
> LPI counters exposed by statitics update method.
> A EEE TX LPI counter reflect the transmitter entries EEE (IEEE 802.3az)
> into the LPI state. A EEE RX LPI counter reflect the receiver link
> partner entries into EEE(IEEE 802.3az) LPI state.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 3 +++
>  drivers/net/ethernet/intel/igc/igc_hw.h      | 2 ++
>  drivers/net/ethernet/intel/igc/igc_main.c    | 2 ++
>  3 files changed, 7 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
