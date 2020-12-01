Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 288852CA634
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Dec 2020 15:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CC08886A34;
	Tue,  1 Dec 2020 14:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nyclEh9RV1-y; Tue,  1 Dec 2020 14:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 135BB86A3D;
	Tue,  1 Dec 2020 14:48:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 32E931BF290
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 14:48:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2CC3D869E4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 14:48:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dVnjFrQomRim for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Dec 2020 14:48:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EBD18698D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Dec 2020 14:48:57 +0000 (UTC)
IronPort-SDR: dXWk2ScgnYqHcEXqWLm7GZFn4MvfsMWsHYpPf69mVvpfBlwe21g+8DaK9F7DH5z8qMFscM0ZsC
 j8waTY83/syg==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="172051049"
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="172051049"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 06:48:54 -0800
IronPort-SDR: DjSTLOkzqsz8jb2BceXqoDnAl7DpsAJ0XTvRnLiXVkNt019hNn3DgTO7anyzwvn4eT5xbBSdHw
 HOJVWIwYEhTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,384,1599548400"; d="scan'208";a="405143775"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 01 Dec 2020 06:48:54 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 06:48:54 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 06:48:53 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 1 Dec 2020 06:48:53 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 1 Dec 2020 06:48:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzVAxQHiSiZQeotcJr4QJF5UqfUacC0sFKQX2U2ILy+9M9+c8B0vEwjlXd87x6uE1+0XFoi47LUx0T4IBD8wlQxc2sMPZWIL2JQcVgSJkwR15/2Ik+7uSy5W37RkTdmSohyloIR+fKeLDQFiTVknx0PRDxZ3PC5GjQIwCqJOsyTrNhGTkAdcgJJxzm9lb4aBX+aPIRKgS3zmvSdGetD0f/fIHCk/oBOc6hcssKlQJJCTkSGJmwrvKtb4ZKhTtr6VVdkamVN9HC/hbCKqao7I4gO3bshiMkzSZ7dydnGaapO31863u8yvu/KnxKMXQI/I/CsiCq8GtwnJdc/PP5h9Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N40bOQ73sw4ud/q6DC1+qThrsTwy9VO8bxNDIQ6p5kQ=;
 b=CWJaH1TLAECyE+hg9lpZbXqj3SKL980qfL90HoGhtNlsO2vlDVbml6ea8DOYgwyFj/5deAWSZs4m0T4nwsYXnGr4hOaEMcR2zjUfttcPtn4VPJ43lWDc91r8kW+nYDc8CavNs4gvSObXPwu4bK01G5hTYIX7diXrsTRn7qBOtaxmlw5GBuDXN/KOPyymhc3qX460DufbFIM0yenSA59T7vMfYMjxWS7iKR1xyhQFA0/+l37UV5uKZTpOWaZ6rD5LL6xosu5bkqZP3Uls5VMumumjF9ybYLlpX3cbxBCPMhdG2yxUK9JA4HVwTeofve+V/HQEUmSDiRnvs0jULUVe6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=N40bOQ73sw4ud/q6DC1+qThrsTwy9VO8bxNDIQ6p5kQ=;
 b=VmD86Y0/CUk5GpN5zt9Pz5+AfNWKN0bUe9ywAO348m5ydmJMtvb12WjcPGYJZM7GrI3hob4Ygf70aTf6tWsyY9U4u/P68fuPY3nd1aZYikGEm5zukzCDaAb0v4KjcNGV69SRdtl3UgZx9+snK+SLEtAxb172+RYcA/nGzrEKEYA=
Received: from SN6PR11MB3008.namprd11.prod.outlook.com (2603:10b6:805:cf::18)
 by SA0PR11MB4622.namprd11.prod.outlook.com (2603:10b6:806:9c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.24; Tue, 1 Dec
 2020 14:48:52 +0000
Received: from SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::5072:297c:9cd1:48b3]) by SN6PR11MB3008.namprd11.prod.outlook.com
 ([fe80::5072:297c:9cd1:48b3%7]) with mapi id 15.20.3499.035; Tue, 1 Dec 2020
 14:48:52 +0000
From: "Kuruvinakunnel, George" <george.kuruvinakunnel@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net 5/6] ice: use correct xdp_ring with
 XDP_TX action
Thread-Index: AQHWv5+tiYFWa+TNY0enAbt/BFP7+KniTaoA
Date: Tue, 1 Dec 2020 14:48:52 +0000
Message-ID: <SN6PR11MB30085372A7EE4A42BE081F54E2F40@SN6PR11MB3008.namprd11.prod.outlook.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
 <20201121003835.48424-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20201121003835.48424-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [106.216.131.121]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: abda2657-9b1b-4bc5-b297-08d896083879
x-ms-traffictypediagnostic: SA0PR11MB4622:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4622E9108A20BD9A1AF794E1E2F40@SA0PR11MB4622.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 74yz18WId9ZpBkG8+WOCv55eLlJ/+MpXSqaQ2s2XdmKxUnlrbkVuVMOMPTGJz8IRbiI2wb/Qxu2qxjoTmyrMKDTsoI6fj4OlReAfjHgF98PrnVswrOtTgwZfVFuRwmG7ZLeACF3GQ49GYxEKpi+mpN/o2O2cJkQpWp8ZYv1RBhTGARS8FfySveGBl5OSx43ggfiSW2iy1VD1nFabPhm9kz4kqU5ethqNamG9ggQnJDBF0trgJCTlZc3cWF0kse7+pVUD9M2QLvxkTvEsqRtIweKJITZn0yvkU/p+G3+aHJvQUF5TuZ8BhhDzGEtQkZA+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3008.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(376002)(396003)(366004)(346002)(6506007)(83380400001)(110136005)(316002)(76116006)(8936002)(8676002)(2906002)(9686003)(55016002)(186003)(55236004)(53546011)(7696005)(66476007)(26005)(66946007)(4744005)(86362001)(66446008)(52536014)(71200400001)(66556008)(478600001)(5660300002)(33656002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 5yJRM8m+H8tKQPdC7JpdQb8peqIMXVEPLoNLbWQ2jf3NfZ0UTJ1JBLrHrvR4WjzEZ5gVfaeeozUyaCyG9emCAEX/2JuLhKwUD1V0fDn0OhyzW3uzKaMVZO62IW+21xfpI9bvowIyI1V/qkGnegUYeQcz5gYibtkZ9v7c19UGie3/YQliFm5ZrA+mowXGVV9NGaU4v5sftq7WmPNeSqY+Xgle21P6kuJkyNsvRgvUmP4AO14PCPh/dKoTipeegIQfHz8NP+2NTCglBYg+Xc9hZS7ltZ+AK3LlnX+MMBjVvbvzNg7DwrJHe0G2jbMeqKJOm/so47cu7/CdpWF8QWz+QiWpnpfOA9KHxU5PsP1jLbmMdTtNEtgGLIHbmam6tt7ZkuHH0WBLA8F3nkMWExN8woYxsVi3drhtUn1AIJJvfbfZgTB7x+YfxGFNPE1XL2cRcR189dOZy1fIiJn0TDShCGfW9FK5HpAQ5EGW5wz+6QWEvkWy/qafhbaMy4lnenBnVLCD/Zm6o+8hUufSKopcz5WVGYPiCGpuNilJ1wHw9So1ns58rr/8M7UXT3AueVwKAKLlEvcQ5rrQ/frmKpcq/rfinDXKPvXWiCB5a+iEs6zqR9b3kUs3qvInzma+eDzsyeSADFWt8xDPdT5+pRg8q09tUHOBx95+bRrD9fMxc3bPhMpXHudHrMywyOMf0tTpY3e87OjHceDM5KHtedMvtjWu9M8LK9MNAaFZXB9m3TfPhC5n06TqPFmQC5koZIjM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3008.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: abda2657-9b1b-4bc5-b297-08d896083879
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2020 14:48:52.2950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WSaItNZqIY5DDyHJxuIusNtSmQ3ukJ1iDbRfxL5PSZ7WHJEoQWrCkmcQs1GmPTNRIyQIZbGaPly7SMKEvdA2ePEHDnYS53iGLza5oWsjaaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4622
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net 5/6] ice: use correct xdp_ring with
 XDP_TX action
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Tony
> Nguyen
> Sent: Saturday, November 21, 2020 6:09 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [net 5/6] ice: use correct xdp_ring with XDP_TX action
> 
> From: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> XDP queue number for XDP_TX action is used inconsistently and may result with
> no packets transmitted. Fix queue number used by the driver when doing
> XDP_TX, i.e. use receive queue number as in ice_finalize_xdp_rx.
> 
> Also, using smp_processor_id() is wrong here and won't work with less queues.
> 
> Fixes: efc2214b6047 ("ice: Add support for XDP")
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>  

Tested-by: George Kuruvinakunnel <george.kuruvinakunnel@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
