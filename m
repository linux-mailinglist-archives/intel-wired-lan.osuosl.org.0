Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E686F1E6DFF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 May 2020 23:45:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9560F88326;
	Thu, 28 May 2020 21:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q4Ot8es1THCz; Thu, 28 May 2020 21:45:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1E188832B;
	Thu, 28 May 2020 21:45:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3EC3E1BF39A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:45:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3AA898917B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:45:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sK-zzJgs7QdU for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 21:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C60B89157
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 21:44:59 +0000 (UTC)
IronPort-SDR: eBG/OA3WiIVRhhACjt8ze1iIEO3D4okEwxpItKW+IjJW0BAtCVI79WbdZ+dAfhd6FGqdVDCSZy
 5KZXB9dPhnPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 14:44:59 -0700
IronPort-SDR: lAP8vgJ4aHevfcSlG1hVoGstU96Bx6pyTR6zKeBFyckC0vN7hID5uEeJuXRWop+TMzXh6CNU1X
 rv0LsialvfAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="469276081"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga005.fm.intel.com with ESMTP; 28 May 2020 14:44:59 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:58 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx118.amr.corp.intel.com (10.18.116.18) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 14:44:58 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.52) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 14:44:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cj1uz2zQoFM2+/qgm6Dx7wExXMXIByyxX/VTdI8C4H9zT3oQyws2EUREt4LVKyXAioVt4MrhJCXl2XA+DDcJGWLmobPtmJzKSEqi3q1VlRQeHHtLhrl1IxtRCNKtDEhsB5ypvZZfmxx8+Ukz3ioL1F8Kp4hmScB6EjcIICaMJ8+CvFs3X2Iq+aJf4lOEO+SM34GE91SJg/ldeRcY2Z6kmIeT5eihFDAlEuudMiFMDco4FqSgAMDQ7qNVVIx5jOXi+5F9NSKq5BawTX9L/CW53Rg25ShARCT609Op3IWFBvx5B/Dil55Pi746VZEIR+1rdq3+Wk6Bh3BINE+tq2GXeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsJbBSV8CNQyOAZbBMH0PaWp332vwuZPWuT0FhhZwLU=;
 b=WXsOgC11K3xo8+n9tSdqx7xUotz63mLsFDbYa4UMPEero+9MkKcnneIZdckDCBPL2sSi96RotwymtnQlin4zXA06TpRTC7sbY0Qg0ATMMRIWyxMA+RiVyiWJgqzprCyKBp9+AlkSuK2udqLF6Uh+X3qoMF0E4uVj5eGP0H19UMbW7LgMtImPuGTMamYaH2jB0F7FcP3QezgQN+VFLkaZ7Mcpbog85eKBwaCT2GsFnIwbueq9zekfFt9+E+XSeBHttWWMR5f6F+rzW3SuhJJf/reXgBUdarXVPy2BV37B2y6chnl84FFJ+/mlqEmNQoT0zY1L2E/3Y3XzNvtcUa88oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsJbBSV8CNQyOAZbBMH0PaWp332vwuZPWuT0FhhZwLU=;
 b=zUXJ4Xec5putuYIO9mxunWTBvIzKrXeOezR3qv/t1ow1oOJo9t8kon8CDrwJqQAs35Dywgml03JqraSiQxlpmOPDv9vv5kkrdF8TalZYl7nwT2lY+/YIenMDcldv7xKy+XAnGyQ0HnI4dX9Llfmbgj6kvWZUbtWbBX1p3TzN0y4=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB2043.namprd11.prod.outlook.com (2603:10b6:3:e::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 21:44:54 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 21:44:54 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S45 15/15] ice: Update
 ICE_PHY_TYPE_HIGH_MAX_INDEX value
Thread-Index: AQHWKxySjRy/yv8FO0yZOfkm5hyCKai+HCmQ
Date: Thu, 28 May 2020 21:44:54 +0000
Message-ID: <DM5PR11MB165992EB445D0679C4E7F3488C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005121.4963-1-anthony.l.nguyen@intel.com>
 <20200516005121.4963-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005121.4963-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [192.55.52.219]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e8b7d6e-550c-40e5-768e-08d803505bfc
x-ms-traffictypediagnostic: DM5PR11MB2043:
x-microsoft-antispam-prvs: <DM5PR11MB204332DE56578DD85E7B1A318C8E0@DM5PR11MB2043.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZsmT22dSVlyr95sD2LDRQFkyJCteFQRUECbQtmBiIPYFCqLJEjj3eF0/EkgCB6YDiy4n+N8UvNrlAq1SPV02BmXJv4WaAyr5rfMYy9W6A9Az6UAO0GHfoWMOQP6G7VMl3U0Y4Lki7H15fxCVEAiqzjjFslcPtxnUo50KBXgzCjpuOZvF8r5WucrEehy0ddDe7mL7Qm4B7xeFzrOMnRqtSXd/eC+bNTVdru6c0coJdxTxPABa+vGaObN/ue7js9cbnlKE0ZxEBbhOxORZxHvfxMWXwZVpBDHxCsILJUuH8xKjbrkUew7dAYqSmX7DzpS+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(366004)(346002)(136003)(396003)(66946007)(66556008)(64756008)(66446008)(71200400001)(66476007)(2906002)(33656002)(316002)(15650500001)(86362001)(52536014)(6916009)(83380400001)(4744005)(55016002)(9686003)(76116006)(26005)(186003)(8936002)(7696005)(8676002)(6506007)(5660300002)(53546011)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 128HUtNfMry2hqMMQnxrynzUU7dKcphkYhcvNxRwmnw+btH8sN9XchBW8uuQDdBdKnWuw4TpoyNLb2GHhXRPtiS+1kn+R1nWdWRtlxKvtU6gr3Kt9ys1/SxUyDLlie7zkGrK1qid52Lb0qD0/qr6IWXKvJH+XQaPUuR3MHnuE57NgqMO1hiZopU2tSztOS9Rn2t5ouhJ/0WZjkTw8y0nXf8zmUJbFF1+w65OLRr65T8Rw9FJ9bQIoEXOLAxXo3v+rFNbKltaGx0uiUVRz89vLwrMC+rxxe13VTdDXkJC1wa09wdKbK6OG+TjnvPihu9yjtflvlkW2yhVC1HPdPgSBCgb8/7G9HFDuTBEiV4wG/WnatB0I9uwpBiwJHabN/CCzg40R+WVX3YyBb43OLNm2C8wqbwU6VALEDhG/4vbZIjjTC1OnuHx4jct2wGhgz3ocJcyQpZq6Y9j+XfYnCBmYxJaUnOgaXTFFkNmjS+j5dVArZlWqVZ/4JsoT4thFCwT
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e8b7d6e-550c-40e5-768e-08d803505bfc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 21:44:54.7584 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JlS5A+JmvcyOmTyP1iR6aau2CBpeMU/eIO0/ERclVJ1KWLEeFfVws+Q8boI0TOvEAw4lFmvnTzm5gjaV1KeP4gsZxnm7K3PHQvRhCEas9SM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2043
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S45 15/15] ice: Update
 ICE_PHY_TYPE_HIGH_MAX_INDEX value
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
> Tony Nguyen
> Sent: Friday, May 15, 2020 5:51 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S45 15/15] ice: Update
> ICE_PHY_TYPE_HIGH_MAX_INDEX value
> 
> From: Chinh T Cao <chinh.t.cao@intel.com>
> 
> As currently, we are supporting only 5 PHY_SPEEDs for phy_type_high.
> Thus, we should adjust the value of ICE_PHY_TYPE_HIGH_MAX_INDEX to 5.
> 
> Signed-off-by: Chinh T Cao <chinh.t.cao@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
