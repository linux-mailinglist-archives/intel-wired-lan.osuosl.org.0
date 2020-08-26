Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A9BF0253A2A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 00:15:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5278288039;
	Wed, 26 Aug 2020 22:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CZ41h9BRjuM1; Wed, 26 Aug 2020 22:15:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9969E88070;
	Wed, 26 Aug 2020 22:15:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 548C71BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4FD7B86B24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMwakZD3v6wU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 22:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6DFAE86B22
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 22:15:20 +0000 (UTC)
IronPort-SDR: yCmjuk+gdBbANL1WEiuS0bY9QgyWStVFHypV/+6fcFIl5aOSFanM12W4IIrkvYmPWzaQuzPWmt
 qXPpQgpGKZfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="220644606"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="220644606"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 15:15:19 -0700
IronPort-SDR: wjG/uaWULZp0X5Wn+85B2tPQSv7MEArYYeIXR2mVvocmVxxTKwYP3qsZR+wVYCQ4IinicjWnkv
 cFoyvWdqhNzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="299629204"
Received: from orsmsx601-2.jf.intel.com (HELO ORSMSX601.amr.corp.intel.com)
 ([10.22.229.81])
 by orsmga006.jf.intel.com with ESMTP; 26 Aug 2020 15:15:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 15:15:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 15:15:04 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 26 Aug 2020 15:15:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jaEdYJIy69bvYUUVd1MQ2++YgWvYzJkeBx1LjPRDLkIPFyw0bzsKtaPNahX74EQlJsQi7ioYdkDNnQpE2+xLdEn8edI81kPkprnRKcmGs4VykBm3BS2/5Ow0Oxx9i/NxCgU8ydnMXFsGKw9mYLuV/h1w29vBggl7u3ImMd+msTkv5hAorOSm0QeFjT5Ar/9jtMTbYAhqLrZsmJnMTju2G1uUTLKtXoZpQDCUEEay40h0meKXyO2j18j3sspLM9s/GZKYmXH3hm9GGrGJkN/w+uGDwID8X6duJ4lENkwWGssA7cAwgf2SCKcGWu1/TItGUulmtaAAjqcoar0TrYxLdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ur2jk6koC5YvwZjhVCscHaoUjwoVEj//ssaeBikfNPQ=;
 b=JIQhzrDgcY79dRbZzKuthkt16GSLlwWDHhMFZaCD/gKTfrHBo3TwQzvMv41kBG3YrTnMEOp5V9J6t7nFLhT+FES7iIw/LxVZsxmgEqgCcDjnKoUph9Nbv1DAzOdaf/AtPeVYE4bannIubzXfAFL7627K/SV/Ew2nnjqJuoYhvFCuTNHBbwmPP99Gy4UmLRQww/G7ntyMtW19mad56xd2FsfS4bxntPbxIS1gdsgOLM8DgeE08IDL0Nf+nkr5RR5/xW0xS6FN4gTyI8c5XQg6SLXRG0ThdgDdpynA/s5I5pZtjUJSx6m39O/NwY16rwF4Wnp61PndPsrsM9jxv3Bz9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ur2jk6koC5YvwZjhVCscHaoUjwoVEj//ssaeBikfNPQ=;
 b=HsjnJI82YLPme1OpLlnTqQ5XJXtr0KH0HCM5aVopE7pBo64BsVQPm9VC1cE0rKqOL8EA1BDMMlfKw5rr3bMsnf8mXghlIyMHxGePnBr2x8aDMYfI9WThbsVWZ/lZzO8sF9idqM/YsnfGx05e0FyncsKni475oa3pBuEpItbWA1k=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4122.namprd11.prod.outlook.com (2603:10b6:5:195::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.25; Wed, 26 Aug 2020 22:15:02 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 22:15:02 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Gomes, Vinicius" <vinicius.gomes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2 2/2] igc: Fix not considering
 the TX delay for timestamps
Thread-Index: AQHWdbkjWf5QJ/snNketpF2AAVdIXKlLASlA
Date: Wed, 26 Aug 2020 22:15:02 +0000
Message-ID: <DM6PR11MB2890D4A832500B4467BD120FBC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200818234002.3057510-1-vinicius.gomes@intel.com>
 <20200818234002.3057510-2-vinicius.gomes@intel.com>
In-Reply-To: <20200818234002.3057510-2-vinicius.gomes@intel.com>
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
x-ms-office365-filtering-correlation-id: 79f3c796-65ff-434b-ae72-08d84a0d7a64
x-ms-traffictypediagnostic: DM6PR11MB4122:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB412276827EADF9E12828DFBABC540@DM6PR11MB4122.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zAK8U+Kzqw7O01Le75A7uUQzXKlJl/BHmPX9E/84UR6JUrxeiwyCjBqUyLGZ+hCWMPdq91b+1UiLikcEdLhut+AKlSn5rL5jo0XNEQfBzSPDiP4HGO1xlpNvroJjorgE3bMjgWgaqKI3HXD2bXZAOQ0Ce6Ee1+wq01EVyR7Nw1nH3DseoxiQtISHoY6HFtlHILuFUmuWWVOEwir0E0a0GmZn/EL6u2fsoZFvuca+LZNPzxndB/7LHlwf88cV+2K+DxIaZZUOiCeYEmgl/iTivS1PRXfPwb93P5C8s9J3xhVvexGYvWigzcIpxWOtvHU515fD/yVaF1610cqQFnoJIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(316002)(76116006)(186003)(2906002)(7696005)(66946007)(478600001)(9686003)(71200400001)(86362001)(55016002)(4326008)(66556008)(110136005)(66476007)(64756008)(4744005)(8676002)(66446008)(52536014)(6506007)(8936002)(26005)(107886003)(33656002)(53546011)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aem5LXQ4tVqAMzcSqXWrVKXLxncAmYgh/Qedt3d52F145O5pbiS/ayWq6dMVheiaZqcVgvhhQhDcftNFeMnruZ5kml9jzPko9jLjeemxpSDw7FhlqLHqcJ0oSspQOc88ASX1dyz301mEC1vguOIWhwH0p8qYxH/pt0av75Qfpz1Fx1WiqHevOqJUGQn8aoR3ALRH0dNHR5fTy/jJepLUzctO96c1aWLMIjWZJ65iXe8RT/w6JFJTrBW/gtPb3XUQo8WU2jK4V8dfA4TFSMmpWk8GGXBdorWdxkDKg+VDZB4ApklV7lg+cgQRGZ0laNGmpToHhy2Vs3APskRDqwooviNRy1pDJnpgye8Q48eNtjaElpwwrEQsRHv2K6AvRCLJzUCaDqbOjbTNjtVy4Er5HvNccQvZWtwS7VqTZDbkEmdg3g+0s2NRzHmnKdIuYlMgcnda8gSxMDeXNsjYHzB5v613oZ4z7cVTvqYXjsUhC/Az/tviYcfmls5nUeKTXLMfavaycCmMG4YRMkheqkk1bjEY8BcVJgRIhplH5o+ZgX6PBRUgv02idaNqUoLV+vUZsL70k8YbLQehIpRqLXuoULl226M6wHv4fBd2iBK4c09jOOMLhGNqtqLUH3b+DCfevLqSTqJy/T9hexk2q8wgeg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79f3c796-65ff-434b-ae72-08d84a0d7a64
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 22:15:02.0834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KUhqJlDkXjQKmipmGNN+T/Ccv69gJgJDdsofje4/7cdN+lnIqIw9MhusG3nGn4uKh3UgSWr6MAbjjkjaKamqOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4122
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2 2/2] igc: Fix not considering
 the TX delay for timestamps
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
> Sent: Tuesday, August 18, 2020 4:40 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Guedes, Andre <andre.guedes@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2 2/2] igc: Fix not considering the TX
> delay for timestamps
> 
> Changes from v1:
>   - Added Fixes tag
> 
> When timestamping a packet there's a delay between the start of the
> packet and the point where the hardware actually captures the
> timestamp. This difference needs to be considered if we want accurate
> timestamps.
> 
> This was done on the RX side, but not on the TX side.
> 
> Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
