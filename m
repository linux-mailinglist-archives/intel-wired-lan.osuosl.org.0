Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1051E2FE5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:22:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8539D8698B;
	Tue, 26 May 2020 20:22:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCuoWs2z80X9; Tue, 26 May 2020 20:22:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F4DB8691A;
	Tue, 26 May 2020 20:22:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4FA1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5923686746
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZN6hcISRarlZ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:22:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8735187C0D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:45 +0000 (UTC)
IronPort-SDR: MmqkZL9K3gP91EMUMw0SJPsVkikj+wVDGQjYgugCk2GVVjYWcmWYX8Oqyno7qJRT+AAqvQ2Kjh
 sbw1UMshNdDA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:22:45 -0700
IronPort-SDR: cxvNzkU34QWtjeFcyy36krKPQa2GLK/EcOL9N0QKwoSgR6ETw74Jgt4ojFPops03Yksh4kboFE
 J91qOmvFAo/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="442228267"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by orsmga005.jf.intel.com with ESMTP; 26 May 2020 13:22:44 -0700
Received: from fmsmsx126.amr.corp.intel.com (10.18.125.43) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:22:44 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX126.amr.corp.intel.com (10.18.125.43) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:22:44 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 26 May 2020 13:22:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A2cLue7oXCx2DxCeXSaGVsQQOgsvkaN+C/LiHDfYqRBqhSp98MyjaTzUE7Pa2+MacDXYsrAwpVDjjAgZ+jChf8tN0jfoA963/oe/tJWguFRR3LroeTlEOSqHGy50EX+6L5GmD/+icb//OiDI1g08jzNgfiXCe7TsyfZza0Cl3MEA8aWHgi3oGRWNwmuNBKIX8f+PtRy+tizyfuK4I2IEjZ9edGTjhn0P83eis99qq/18uwnK0vpMRyhS/Esur16XXh6xf4KO4YrzxJxOdWzq6dBZEv7PsaCyDwbyRn0oX0A8b0Z9D3KtZhIeDs4vS4XhadeTisvdPT2ITf4Nh8nPEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3BcjOlman1f/e7kD+BNRp7RpHZyVGhnMXYMS2MAw+V8=;
 b=GtyudACijDyy5TK6qhx1WE5cNbYZIxE1B2W8rZ9w+KRlyFQ8JAZFp9Nhch+h5Zn1ykCohRNH5R1p5XL4/JhsDJ+zDzQFwD+89eIboZcvy8zyfnUc2xAYnls6z4VwE5qHVDaG27dXAW3ssXnknzKs3F9mdva4foDrxf0SeaiZ0/VsSPVEVFat5MxSHphlPcoVjiexAy6m4JyfEgqRU6MGPcUQqLg3Yma5Xgw5cj9/AT5CToOtls9jFcqyVZkSLUsJU7rbgk4fEbQQnBrQctSk+VVp74pNXGBscEnCPhPRah/sMM/62E94C9m4PaQxIcf7zME/cmQVM/BOeG7voYbfeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3BcjOlman1f/e7kD+BNRp7RpHZyVGhnMXYMS2MAw+V8=;
 b=LFCFWRk5oT1s9CleIgux6qzrTlcXMZhoPpvWKWcUnXuELBXBz0nrIhrJfMo+zO3FSdDqolMQGtcQftVdbFs5prKxwdrEtl1vWFkNroXNYZXmB61LOmgZq234Ncl3sg2OxAXxRE5Yh93Yiq5+9Fiqs7wAOmE+XPtuesZw6AaEu9M=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.26; Tue, 26 May 2020 20:22:42 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:22:42 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 02/14] ice: Handle critical FW
 error during admin queue initialization
Thread-Index: AQHWKxtNQNFtdQGxsUyVF7KH5AzhKqi64H0Q
Date: Tue, 26 May 2020 20:22:42 +0000
Message-ID: <DM5PR11MB16598FDE1B5A1B7488D4E26E8CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-2-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-2-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f3f9c76b-6e3e-48e6-f0a1-08d801b28b7f
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB13539A732FF55F1E93B0C4648CB00@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1443;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: djzh60kUW1NM6ZuwqHyY6JUhEKxsaTmTa37Q6Sos5FwkS4l/YiFdCIc9wByAlT7SVrE4Hwnd0a9cmLwex49v8IdcFY/IX1uVUcKpd3LenXrb1L01Av/20HBEpVohY34ACzhFHAPQHQH4hz90YzxA1iU67p1aJKfjwN0n44hUpt2u5pdT0xwyEboWLc7kCNaeDFZGdgzSDkYC08+usCQ/We/dVFRjHxfEwmS7ooyIBeB84PbVITy0mcMbVWmbdadPU6x5Hlp2UXwdDwIlnhg9q2umyho9Am9i93MI2pmyWzXW0XJF/lBItk0i96RofHue/Zk7AxkzDZ+RYPw+mmUugg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(8936002)(71200400001)(33656002)(8676002)(52536014)(316002)(86362001)(478600001)(2906002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(55016002)(7696005)(5660300002)(26005)(6506007)(186003)(6916009)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fv5XTQ7tJphSBQL1SsQwIn1S8Pugl47djZoRU8mK0Y8NK6kVNC4GKeDA4ha9T5izVr25eZdFiCLo77f7zdYnuY+iFYMBwd3AALRHJDV2JOsmMG7AYjeRlL/pi32HTq9F6G8ituPpTJu6mQth+lyo6202VhfbcMXJ6GMjGsD1MJkNdqbkQqjAMKFC0g/bh5+Qt7iBK5jNHlCGjl+9f7aY2DYPmlmYlZbTvq8MYk9EmgKEnqOtUiE4hsJC5oOjFqtFhkAqj/ATPMhL14oXp0Swh5ctwzcxH0cA7FWJY4rIFeE00lCfZyA0vPMyTCaKR1IQpfrRuk00PuoRm/UoVm+KUVDSd5uKFlif7OLDKYsbC8xKrSqZvMyJ0+vo1WyURL9yanYJ4G5C9U+gXM51fNZKmO90VrjTTdb2orR/Nz2yDSJ0SvlhniEw7LCyhKT2Pdu3Esso2bVaO6bxinubQLyTcKhkbLboPq5IgYfwikrEtX2oS10bSjPDS7dnirM/39jt
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f9c76b-6e3e-48e6-f0a1-08d801b28b7f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:22:42.8489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4CRd3SMI7r5S+lkfiqCcXtUwSCOytRKtIQKKSsJA+brzmqqMcKJlrU9CzPczIr122BKg6oeb491ZVqeX6HTT1Sza9BltBVY9wt7zfO7kqBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 02/14] ice: Handle critical FW
 error during admin queue initialization
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
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 02/14] ice: Handle critical FW error
> during admin queue initialization
> 
> From: Evan Swanson <evan.swanson@intel.com>
> 
> A race condition between FW and SW can occur between admin queue setup
> and the first command sent. A link event may occur and FW attempts to
> notify a non-existent queue. FW will set the critical error bit and disable the
> queue. When this happens retry queue setup.
> 
> Signed-off-by: Evan Swanson <evan.swanson@intel.com>
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_controlq.c | 126 ++++++++++--------
>  drivers/net/ethernet/intel/ice/ice_controlq.h |   3 +
>  .../net/ethernet/intel/ice/ice_hw_autogen.h   |   2 +
>  drivers/net/ethernet/intel/ice/ice_main.c     |   2 +
>  drivers/net/ethernet/intel/ice/ice_status.h   |   1 +
>  5 files changed, 80 insertions(+), 54 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
