Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A951EEAED
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Jun 2020 21:11:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 705AB882F4;
	Thu,  4 Jun 2020 19:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pbzyIsDM0KYn; Thu,  4 Jun 2020 19:11:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7AA5E88230;
	Thu,  4 Jun 2020 19:11:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 551E01BF386
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5085D87522
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rAFtQYoAKZHZ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Jun 2020 19:11:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 182DE8733F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Jun 2020 19:11:10 +0000 (UTC)
IronPort-SDR: HFv2kZR+QnID8Ik8chXy5yksAbKwOWcxEC9L5OAVaWvCyaLtEuDPKjVg4VJahZGpyM7K/T8I0i
 irhHTQ5iGBEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:11:09 -0700
IronPort-SDR: yfaapW/UWDDN4HGbrukVVHnjJKtAXPVZRt2UN6Cxa22U53t4Qx2uuh9r6mzD9mPvGEFgIPFwlt
 uu9txWlDl2fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="378507008"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga001.fm.intel.com with ESMTP; 04 Jun 2020 12:11:08 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 4 Jun 2020 12:11:08 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 4 Jun 2020 12:11:05 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 4 Jun 2020 12:11:05 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Thu, 4 Jun 2020 12:10:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZDAeSU1Vi4DuAXSErf1dY/NJRSZIlpuDEOYVM1e3a9VtUzy009YtlNh5OwwEcsDbnptxD7llPL0BTxzlvIc7483k0zPL1KkZEAkqx474p5YaqpwhsE8SXNjrZLnNMdGIBQBZKIBXPIwBD3SMcNu6D+SGqxupyCnXNSwyyouGAs7Gf8csTIuScBqFhU1attwSOg7Ud5QQKEFtAe3UxQKOx0gIqHsrbx9vHQ09Jag0xvX+AhrgZNyddrZC1gKBDamiVjZEkomnDUgJRWTZzzxrxc+BLm4OmZt4l+/3wtIe3FVDPOiGku07Z1UQwJuzWUQPf6uBo303+wZ3L12/bHyEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rcy2r+h5N4X87bLB2cAqHtz+H0Otgzce/F3cURPQdis=;
 b=hqwmddXkrQ4AkDJ+XdsGBdSbaS9tQ1dhzfncHEEChp331xS8ACt6FklfbS15+e/UvMCwAVLOkvQHCzOxPfXSC31Od8l7dHJ/goRIxgF9tt3s5d4eDAjwpoKafp2lkJriB48Vh56iaIxi5a2sUi9w0cyzsWBAensh7qstT9DriVMX0gQEdmnZdVaUIRYWFSGP5hKMJmCjiSiDxL/qPF7MV364Ba8cS5r1MWPKEdFwcHtiqMKMoheCvVwxfrHyK73+6IKUdUcwZ3v0MrbxC51VvobMQOBiM3cId/CM92hAXgG3VrjBoDtDw7OV7kTHpeslJ8KWXEVBQuw0OWYdHZhUIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rcy2r+h5N4X87bLB2cAqHtz+H0Otgzce/F3cURPQdis=;
 b=ojFinC3quf5hCV5zv/tS3Z6jiTzaIxx4/lRCZX3pgRB+2HedkAfa1g+A6zyjX3hEkmU5eTZaldZzBDknTdroXpfk3AYy9dGo5LBwnDlP4bmlI2OMsGwgCfApaQAM/xs13SOIo9u227KkZaCF5v2ljqZph0S8J/SRpTRnNGWq+ik=
Received: from MWHPR11MB1663.namprd11.prod.outlook.com (2603:10b6:301:d::15)
 by MWHPR11MB0078.namprd11.prod.outlook.com (2603:10b6:301:67::38) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.21; Thu, 4 Jun
 2020 19:10:44 +0000
Received: from MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30]) by MWHPR11MB1663.namprd11.prod.outlook.com
 ([fe80::fd6d:2fa7:3dcd:30%12]) with mapi id 15.20.3045.024; Thu, 4 Jun 2020
 19:10:44 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: make PF wait reset loop reliable
Thread-Index: AQHWM0us6re1UDhbykGEx2DxFA6DhqjI4OXQ
Date: Thu, 4 Jun 2020 19:10:44 +0000
Message-ID: <MWHPR11MB1663313E11F84AE525DAC1B18C890@MWHPR11MB1663.namprd11.prod.outlook.com>
References: <20200526105112.3228-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20200526105112.3228-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.206]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1e5bf1bd-c959-4f43-33f9-08d808bafb4e
x-ms-traffictypediagnostic: MWHPR11MB0078:
x-microsoft-antispam-prvs: <MWHPR11MB0078F4CF00795DE1BBC3F5118C890@MWHPR11MB0078.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M/WG3c5R7T7u3dwRkrFi4jjua86l29B1+YRUahsm3VTWG8k69AURpoPerM0D6fsfAzOsaDgPkPMygBgad6GlyRcOOkQXJir0QY/56XZp16UBdWx65E+MhQg8NgZ/i50vjbDnvgBl6oH9dy35CazCIJXqMym/epaPQt54ex/6aRNURy393bh34UwDjGJLmY97nhA62Y7nGlro2XhxpZijYNo3ydu2QQeCcwrqoUj+W7ngFD0tcqSRRofG6jub4o8KYv7Dh/HQv+j7uv8Lb6IOrS5jWhdAhsWJJ87trjcjxulGIkc7FaeJv6uDACfuC+0a
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1663.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(2906002)(55016002)(71200400001)(7696005)(9686003)(316002)(478600001)(6916009)(83380400001)(66446008)(26005)(52536014)(66476007)(4744005)(53546011)(186003)(8676002)(6506007)(66946007)(86362001)(76116006)(64756008)(5660300002)(8936002)(33656002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1XxBqTpD+DDVwbS8qPRHjQI2mhQCrHcFR6KeYm5vYuCAUcJZMJ4dbkLqYCfFmDKoZanLp26Ru3cky8Wb4ysdgqKD39NRtF+q8Luz/cU/dkpJCfFU4XuxtLPg0hWkmKoEhtdMbbCD+mI6YO4rn+9q6RFpqrA9Og3vVUhqQEykzGw/3+56HJJG/KelM3kcTERDPQO2+vVLuDb6VP6/joXOVeSP4jW2t6kzfAmEy00Lxd2n5w2G+fBiuqQnOocZBEnVXA2GIHSHBY8j9nJ2Gvjvx7S+K+1cqS0tdVdDMRksSopHmXHdCN5xakpZTJb27E7yzFlyOKAITrTLnKNVK4SxC2VhpJqq6P3xXk1xg0l0mGL93fVob2sppNPdYblza4ohtNGcifSYhlNcHdqDrZjD2DSxnIOJufWm6AY1HKZfk/9InEPWWpZImPTGncmvz1uJy3vOxBMTfgpgIUW0zuhX0SKRNNLPSAoxDQIfTQ0TW8U=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e5bf1bd-c959-4f43-33f9-08d808bafb4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 19:10:44.4001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KFtbztbGG9VdLy5+gHCM2J8vBx+dwAKxhMxmnew9sCikffbwoXvek0OP+Rjk0Ctvpk10zAvS7QOJf8FjEJU/6CSAqm90lWNTbwAFFOjOwbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: make PF wait reset loop reliable
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
> Piotr Kwapulinski
> Sent: Tuesday, May 26, 2020 3:51 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: make PF wait reset loop reliable
> 
> Use jiffies to limit max waiting time for PF reset to succeed.
> Previous wait loop was unreliable. It required unreasonably long time to wait
> for PF reset after reboot when NIC was about to enter recovery mode
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 20 +++++++++-----------
>  1 file changed, 9 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
