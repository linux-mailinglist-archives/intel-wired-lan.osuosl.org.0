Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9342928926B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Oct 2020 21:51:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AA438758C;
	Fri,  9 Oct 2020 19:51:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VvOeMj4xPhGv; Fri,  9 Oct 2020 19:51:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69FA58767A;
	Fri,  9 Oct 2020 19:51:15 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 982A51BF2F3
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 19:51:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9076B81D1F
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 19:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYTyiRPPtUVb for <intel-wired-lan@osuosl.org>;
 Fri,  9 Oct 2020 19:51:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CB1F887785
 for <intel-wired-lan@osuosl.org>; Fri,  9 Oct 2020 19:51:12 +0000 (UTC)
IronPort-SDR: u0GM3IKRjrBrv0xU5cMHcZByVGETVjnlnzw0WXjpYTuyURs+9taauMmPZJru0tLBWt1xQJV63V
 Tew1BFh/eprQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9769"; a="229714970"
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="229714970"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2020 12:51:11 -0700
IronPort-SDR: C2jPWRmSDne9MSB0S0kANWMHHjs//seQ9/bu6xtPzyXAqfVQU6YRuU4GfPLUWRCCZhSJeyKwG8
 FNk4aur5Sv3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,355,1596524400"; d="scan'208";a="349957117"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga002.fm.intel.com with ESMTP; 09 Oct 2020 12:51:11 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 9 Oct 2020 12:51:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 9 Oct 2020 12:51:10 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 9 Oct 2020 12:51:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jt+z/TypubtlhBUr1nNHKsoz0/Hm3hPfgBTe+Ogxc/vrN2j5WZbn+/QNbjPdMyIl8prLKE3ffpydGTrzgOcyeTdaB9BqgHBqGrewmdetwJBOhG36vxPaysBMvZWmDM/XMjuwoBFT8AbB4LcB3ERAprvXr3yk3fnIPK/3zM9KT8WckJt4xz+ZM9Yj+MdQ4NPYGa8d7M6ZJLaBOe+T9wr4ccXmgxLM35KqlDPXP6iuiZ7AYUdBOuzMix+KTx3LXJ+S1H40wYGjy4rJBm4ZJ4roIfMf8O1lzmwLXHnZRHz7D2cDTkvMZ59zvUyim07xhhp9jol9zmytCDbzE/6+GJBPCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBuUmrmJ+VrbQl5c+QuA10NXWVVuOKrwOMC+t9ix7Sw=;
 b=az9zQpmIh4bzQjG4EbTWARLlgkFwax3JSuNuUp6sHgBa9NJb12s5oJN5sOkSAUoD/maGmK+if8Zx5YT5TytZXXEkr7xNwSZF1cp/0q4vHiuP0nNtDrBeBXg7zHFzZigyx16b5oM+6spcjOZXBQr5xC3kHI0IIEECq5CiJYBdnaywAuJRBCO03+PF1IdufsCn77HhowFfMmdqSNmMmE665lnT8FEQYuKOYkWfulA/qxnl8rjsvm3pt4/wklYyM/JojHPV6+8cJgtMZOWdMBpi4YWBx4iPavPBojiCTQ2CDGHosmiQAxPA4cgmeIqxR99+yNQVPvzQxVLrU6nyI0x+hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TBuUmrmJ+VrbQl5c+QuA10NXWVVuOKrwOMC+t9ix7Sw=;
 b=ibyWeHqHfk8V9vFuSuXYwrQ8z6TXsj/Aj3Kc8LR1/YGeKXlnFdWhtz7QIJ8Y81WOU1t0k/HA3rV2yLnTWGR4O2R0Ak3McZhN5cZnvst4SXdFRjclb06UmiCuRytxrE6XbSWPQcLlqXZU4WNW4UkiJeszdlO1j/As58uDhdsFA3s=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3914.namprd11.prod.outlook.com (2603:10b6:5:197::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.27; Fri, 9 Oct 2020 19:51:03 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::bdb7:3e5f:8eec:d340%7]) with mapi id 15.20.3433.046; Fri, 9 Oct 2020
 19:51:03 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
Thread-Index: AQHWioFBA8g4O0gM20C0HwL2V7EoX6mP1edg
Date: Fri, 9 Oct 2020 19:51:03 +0000
Message-ID: <DM6PR11MB28907C88A5E245BE9B3543A9BC080@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200914102409.6464-1-vitaly.lifshits@intel.com>
In-Reply-To: <20200914102409.6464-1-vitaly.lifshits@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.177.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38900ced-0d98-43c3-272c-08d86c8ca7bd
x-ms-traffictypediagnostic: DM6PR11MB3914:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB39140E8AD9273D42DBF03B9BBC080@DM6PR11MB3914.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2089;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OegWZrC5qCbw0AGDgLX0+9q2S/0PBb6vppJadlb4yQ05wo3ID5HBmIH8BPGoRi4AakcnMaF/Kpqt7m2HDOamtjI3/ZfAT0Hy2m7RHw5qcefi0cB82rCoEojvqM9k5PvbvGuc+s6WWv2gBKWqUCKdOOWhhZpLfPDDmKiS6YHpcXLFSQ2oG5eT7uEaE8EnhCzL8S6Yi0N5xFOscDPMoMvC9ft6Jh1njXrqK7yxS7Hvfs4F9e40DViRmSNZVuAX5c4QyXxh+gIkfXUIyDEC3NFRqGSNjaazoTFJKgoUy1iPvhMv+v7gH06UMuvvX+xLV5MZYp9eca5LY003WwWptIVNZh8yoLcj2Ov9QF4s8vdtduw+1/Kc0HHS5IGQVcxM6p9y
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(346002)(376002)(366004)(396003)(136003)(8936002)(83380400001)(86362001)(9686003)(66556008)(71200400001)(76116006)(2906002)(64756008)(66946007)(66446008)(66476007)(478600001)(55016002)(33656002)(8676002)(5660300002)(7696005)(52536014)(316002)(110136005)(26005)(186003)(53546011)(6506007)(4744005)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Ylu50rEfEsNF6J1eInQwDUp0eJdtPWEjMjYwf1XFdr0Sgq65wPohjouaEqwo/7+LlaoFqjBUmAbSn9+Cf/4RMpDEYwGPU1Dz+iGR7K10WRmM/anl7S2VffC3nIEOPCTqnJ8fCfkULPP7EjI7kE+UBqBDD9RvfbxgqAjEnuO7eMfdYBFrfvyrU0gyPnFoRVmHmSfuaDACprdXoqfnghK7IyCGvP4WkClDB0/azDAU+P3c9pOJDe465g9/8W/vDriSHDVoFGSuCW8wgfbNJngCF0TQCyEJd1LSWzQ9pY58gxutC3pwC1s+sCaiEED3+mfHsmzOZ4XcJ5kTrce6SSHggU+xa4KAScgVLsMW859jzzx3Gbazn74gYukJTCDWd+KCPsTRzZkZJRc8gkVvBJAhSJStZMmo7rO/xQBYTXwS1/BzIzdIVz6PZGvyzJlPd23nu9Hcib2PBkWd+EjmzaWbZJDvQiwpY0H8FXWaxUcVawv50M0ghY/WoOi8kJvk7KT4UHNlpBEiu0fvFt1Bfy5NLK2RJaSKb9cMZflVNjq7qXsntETsFA6+56qxSJAL2DUqnjmjXJWkvsuZO2LHZ8yJFmuI0Qmacfq/pSHtU9C9sTcTg7FGV5+QwM4xVMPPIFWj3ELUPOtlIO4Kw7d593IVsg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38900ced-0d98-43c3-272c-08d86c8ca7bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2020 19:51:03.6408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EZvWubeB9FaWHPW7hN8a91toOaqjUoargR7BxitT91uyEJVQgzP4E3iK3fFdO6corgZrKu4pAh3/JzGUoqsD0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3914
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly
> Lifshits
> Sent: Monday, September 14, 2020 3:24 AM
> To: intel-wired-lan@osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow S0i3.2
> subset entry
> 
> Changed a configuration in the flows to align with
> architecture requirements to achieve S0i3.2 substate.
> 
> Also fixed a typo in the previous patch- e1000e: fix S0ix flows for
> cable connected case (632fbd5eb5b).
> 
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
