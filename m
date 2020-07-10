Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 662EC21BF27
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Jul 2020 23:26:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D6E8E204A2;
	Fri, 10 Jul 2020 21:26:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hGh8pJAiUbiT; Fri, 10 Jul 2020 21:26:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B84F226922;
	Fri, 10 Jul 2020 21:26:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 202531BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B80B89B3F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8uKDLkpa5BlA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Jul 2020 21:26:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2E42789B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Jul 2020 21:26:15 +0000 (UTC)
IronPort-SDR: k5DE1K3HeEdcMHCjzrKHDwQT0ft3jd/pPwwiTswhl/IH0HXk1E5b1+kzPaOWtwERgT1zs+BD0G
 bG8VW6HVOi3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9678"; a="145795055"
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="145795055"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 14:26:15 -0700
IronPort-SDR: h1ta4KOZh6sHXa/t0cABYRHPyPqEdiqGszeD95eqC6j39gKP6zMwzzRE0/8iV78/PAoNoQx8AL
 lOeHZuQ2JJSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,336,1589266800"; d="scan'208";a="324811811"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2020 14:26:14 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Jul 2020 14:26:14 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 10 Jul 2020 14:26:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 10 Jul 2020 14:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U6GmRA3IWPnkDjdXJkEtUv2asIObDZMhPRj09W2heP55UbhcIu2vAouKWfJ+y379xm7bzxB3la+PKz5uepFrqVbqw14wFUZBUJecr8VZXb0IN6moiAtMM8vdhi/SBT1m+Avw4kgJL1otrtLHN/MtZJAp068nuNZasuIfdzkXLy2vU4+p9tknttvmEFWS6r52DvxYzBYVisyNhqS15kYC35kus2J67EjZulapt/sp6AOfvlKHYFbTMRX7Mo3AfxEscbMB5lYhgo8olXTnskFT82iet1BfRz1TPX5zbYtUEskA5MooH/qrJR5tNIb+BLyLv+QzSBqx2q+of0NfCd5nYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pomzqRZ6eAAvRlIo7W1UYmO9CzdfHRUpbD+AT+5a3Ek=;
 b=moZXSYdqFYNeL3JjHJa9Fx0d4SKDkEYv6Q6q8fHTgbYL8o161Fi3tTvjgiPwX7jVGopuCRfUAortHSADEa9UBwyIaXN1dT5VqH8iMcnBFsgWTXTj1kSQpUWskZ0tga35o6R9WOw7cHJ8X7qhFQicMLnEq5wUWflF2B2fEo099qo4GkTHJc3gfUMDdKtiCMGLELOH2Tqgd7RDmdtG1v1i0dtxVSeECo1TUfObHdREb7FKn0jKS3YWkQdSIIc83Mx2k0hWBvaIuzf+FmhxTZkZXLcXKFRqC2qD3NrBVLDtDmxlptn8Ops3jSTCaWadJCw4idmt8vEkPBptRQ6Jk4Rc5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pomzqRZ6eAAvRlIo7W1UYmO9CzdfHRUpbD+AT+5a3Ek=;
 b=x4lnTXVGi1U5BZTUVa1LQLmcTy/sordKkvIfbzjwRYbDPeaIJi2GHBjG3Rn0615VffSJ40pTNpdHMsHB2xA5ews7B8JLKghF2oLBmX5Pmxu04f/mgfuQFcg6gMaAwRTFvjYMFIX3gpI94dJC6bY182ISE6d7/RjvkAozAcQ2XaI=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN8PR11MB3604.namprd11.prod.outlook.com
 (2603:10b6:408:83::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Fri, 10 Jul
 2020 21:26:11 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3174.022; Fri, 10 Jul 2020
 21:26:11 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S48 v5 16/16] ice: Check FDIR program
 status for AVF
Thread-Index: AQHWVlX7iLqa9OhlBEuzXf1q1VF34qkBVK/w
Date: Fri, 10 Jul 2020 21:26:11 +0000
Message-ID: <BN6PR1101MB2145A56E6BBF78FADA77EB658C650@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200710010644.33817-1-qi.z.zhang@intel.com>
 <20200710010644.33817-17-qi.z.zhang@intel.com>
In-Reply-To: <20200710010644.33817-17-qi.z.zhang@intel.com>
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
x-ms-office365-filtering-correlation-id: 7f40d891-7235-4339-d630-08d82517de76
x-ms-traffictypediagnostic: BN8PR11MB3604:
x-microsoft-antispam-prvs: <BN8PR11MB3604BCF68A56B079E0A43C438C650@BN8PR11MB3604.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cfJ4r5pVLu/npj5rv9G8/mARkK21q6qRLkwU6lJ7geid6Mrgsi2iYrUve+MKOEffTzoYbb/vPlemHDKjx6fEYEEHoMPgAA8LlSnbEeeVHYyvOmrmYLsiDgF2tY2OepzaRWF3XnG4FfVaSg4VoINn5c8nMrsDsWrZjHt9+n00w2sBVAaa0IvLrMLpPbgOex1DP3Et96Ybgomw474liMZEi7zfoD/T09ypiA34NsE2ENnwRx6jecRvIRhrvYny1b9cUw4nA8zDSaDbJkFXBgsP/F0jAfRj8lbkR7HHFoFDhR1yLTBWMjNYakY1Y6roLx7JoPBVwq2jxGNp2waE2GcXwQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(376002)(39860400002)(346002)(136003)(316002)(8936002)(55016002)(64756008)(66446008)(9686003)(53546011)(6506007)(478600001)(66476007)(66946007)(66556008)(26005)(2906002)(86362001)(76116006)(8676002)(71200400001)(7696005)(186003)(33656002)(6916009)(83380400001)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 2AdSOrALCscgcVvve9w8X0YkUGFnP4BGcuqOF97mSJxtJF1M1DrnpErelQBLH7Iq+VQHpbnuPfq7mQ/DzWjB+3bn35qkCw9/yFePDruKkbkip7DNveJDH8bKEZbtgGJr0F1M0YUp/dX9cuPQIdtuq/KMittXKCyxY2b16JtASXJI+5HqmJ1ceJntXhUmJ51PE3Y72t14MODsvGoOeHsCThCnismJaG/ZV+apqNJrgtNwWwSTvZptfxpdURWKovng6pJCbe7+QCiEQXVcOw3VS17A76j3X/2WpZQPo1LSARP+QlXsTznjHg9QfVp9RQsaOLKK9uxSeJtyqBRk6RW/NByIgNIbwiQ2XAsOI3TzP/mvBITT4sVlpu7/VDY3Dvn7YquoYAeNwuckIG04rOPZpVOffj9mHCaR4wwHCJI+zuFAJ/mUy+NonPLE88Y3sxkAemeYXcU50mWrPjN6vkUsv+qvn9djcbBce4Wgj5o7jfg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f40d891-7235-4339-d630-08d82517de76
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jul 2020 21:26:11.2783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RWlPTQGZWaigPfzpRrIdgBgov30pJS20gB1YP7nK+TJkKYlRV9O/4NBgnoTkIUoprAr34YmsM9juH3LJsShURbdo3dATxwXWr5WMMuEWmGI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3604
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S48 v5 16/16] ice: Check FDIR program
 status for AVF
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Qi
> Zhang
> Sent: Thursday, July 9, 2020 6:07 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>
> Subject: [Intel-wired-lan] [PATCH S48 v5 16/16] ice: Check FDIR program
> status for AVF
> 
> Enables returning FDIR completion status by checking the ctrl_vsi Rx queue
> descriptor value.
> 
> To enable returning FDIR completion status from ctrl_vsi Rx queue,
> COMP_Queue and COMP_Report of FDIR filter programming descriptor
> needs to be properly configured. After program request sent to ctrl_vsi Tx
> queue, ctrl_vsi Rx queue interrupt will be triggered and completion status
> will be returned.
> 
> Driver will first issue request in ice_vc_fdir_add_fltr(), then pass FDIR context
> to the background task in interrupt service routine
> ice_vc_fdir_irq_handler() and finally deal with them in ice_flush_fdir_ctx().
> ice_flush_fdir_ctx() will check the descriptor's value, fdir context, and then
> send back virtual channel message to VF by calling
> ice_vc_add_fdir_fltr_post(). An additional timer will be setup in case of
> hardware interrupt timeout.
> 
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice.h               |   1 +
>  drivers/net/ethernet/intel/ice/ice_hw_autogen.h    |   3 +
>  drivers/net/ethernet/intel/ice/ice_lan_tx_rx.h     |  20 +
>  drivers/net/ethernet/intel/ice/ice_main.c          |   2 +
>  drivers/net/ethernet/intel/ice/ice_txrx.c          |   5 +
>  drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 494
> ++++++++++++++++++++-
> drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.h |  27 +-
>  7 files changed, 536 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
