Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDCF1E7036
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2020 01:20:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C83EF88247;
	Thu, 28 May 2020 23:20:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A2x8CoPuIlOt; Thu, 28 May 2020 23:20:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3124888279;
	Thu, 28 May 2020 23:20:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 841441BF372
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7F94388924
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HiFIN3tQ9GY2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 May 2020 23:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 007FE888D1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 May 2020 23:20:35 +0000 (UTC)
IronPort-SDR: 2zivnjOvnrnG6oSw1YYgLOagBxAsJM1sH3FQiNQEP2UdU9v8UuzYl1RA5LWRs55h5MARIm4Wug
 e0Vjimoi5RtQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2020 16:20:35 -0700
IronPort-SDR: 48wd8bTjKM5F8GyflmLZK15tpbbsBzyVVXWGZexLZzF8aM+U1iuD79guIHejUbGMdAfoSxxcyu
 J2EF36w7tZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,446,1583222400"; d="scan'208";a="302964601"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by orsmga008.jf.intel.com with ESMTP; 28 May 2020 16:20:35 -0700
Received: from orsmsx162.amr.corp.intel.com (10.22.240.85) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:20:35 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX162.amr.corp.intel.com (10.22.240.85) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 28 May 2020 16:20:35 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.57) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 28 May 2020 16:20:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BNSH/dgsKAHyqSG6WnudFPa1B8xoXqOSOf/KjMruBuR7xtC8nWMRiscXv5gb9cfl/zhVf+dEZotI5jzo+ve8DaFOCaKZkEkniCRhjr76HteDmu1q0TBbbmDF60SSM50aU481KHJwusbUPeBC1sDeHBQ4fugkcTzMujZ42VMpHoHFjgqrEHpjASNvz83L00uOsyxAHjBTK2DSxfD8W2xtcpHUUsrFgZWOSbafQg3ivvDXCMHgiDAL0WAzU1HuNTjHt4gOWqZuetOLTToaD7Q4Dr+yrUl+b/OZZeoFdMmpO1C6kNnudysOTatKar6PjuGsRLCADunnzLHFJihdi6JU5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yk5WMiIV/apzoe5Ytgn+RkDgaI5yUQnQbZHUVWcDSVU=;
 b=dv3Kdi7cqCV7ol+AuamPXuKkwU7xjnDp4yijO7NuU7Du2OVTovOPD/DfXPIZEpzI3I1hbIM9bGv4VUoZltkTihmSHhWgrNgpNimHMYUM7L/FCqNZ1Yaj9/lu4x52/+urqkuSSPVGNJR/4wH//5LL9Xmaakmrulp3XT0BxvFxu9q5qo1nocLVbM+QTDXAev9mHrP3WxJ+EzKmzJnLNHmvNoR3EnWBIJRuRORjzvPy7VWQT565kSnw7pL36u0+tlPDvrXMelrwX5tDravHDZZN3q5o157OtfSLsbcYxPEYBeBypyAk8BLtutr1+ns1sOnFcwrgGvX0uIDp6dgyjbgVdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yk5WMiIV/apzoe5Ytgn+RkDgaI5yUQnQbZHUVWcDSVU=;
 b=MEVrRvBup5+zVPoRM+COL6QNrELT5hDh9W8HjE18jI2Vy6vMyh69fnVdVX5M3Ppr+XTRVD18ClpsVffey674mMSp7M5j5OLWI+FccOk5XSwfOB5m6dCM2EJp1wPWFyYUkrhIhmR9zsr702URifGhofZtUD0RZ+GZ3zfFxFzKzjQ=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3045.19; Thu, 28 May 2020 23:20:34 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.018; Thu, 28 May 2020
 23:20:34 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S46 8/9] ice: fix aRFS after flow
 director delete
Thread-Index: AQHWKx0WCuYfwKQoZky8nO2ImmkM6Ki+NtOA
Date: Thu, 28 May 2020 23:20:33 +0000
Message-ID: <DM5PR11MB16598AC5FB266D4C4F918BB28C8E0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516005506.5113-1-anthony.l.nguyen@intel.com>
 <20200516005506.5113-8-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516005506.5113-8-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: ccea9840-84f0-425c-61c9-08d8035db8d5
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB1353174459980FD78702FE888C8E0@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +I7Qpe9TDjPaTbjpiPS/u7TPvF+dnurU4u4DWoi8O0dYKW2wXswMINHhxOqk2FSRKMFICrG5JZHYfmD/lCHHWDfdRtxJ/G7W6aB/qs0R49zKGOHyYRzslJiZb0Wbu5GXRBEWoSpSTsS5HplpcCj/t9DF7nuqLgdvKdTujKH1hGsswa+nDacZ0ABndTkb9jHg2tfCw4Kl/hTY/Q4JMJJqkYIs0ONHhk2fjgeL9R1SpT3Ru3ja9j8D+wHhoAc1lbnOcV541/xPnNyJhOJTRNxmV477KRNt9CsHFzcgpYuiHWnlDKykDjosiQoDxiymuFmg31vFZjshy35u+SPJQDwDlw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(346002)(396003)(376002)(366004)(86362001)(5660300002)(71200400001)(4744005)(33656002)(66946007)(64756008)(66446008)(316002)(66556008)(66476007)(26005)(186003)(8936002)(76116006)(6506007)(9686003)(53546011)(83380400001)(52536014)(6916009)(478600001)(2906002)(55016002)(8676002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vx7DlAvVhnXLnC3t0XZzl/1LuG3IxycY72WiG3kqkyuBtX83HRc6tWQ+ZHKm5r9OTE1GC1jDpnJ54gXoE6ECckUIZgym6nkmKGUnSufcjakFMNdPAo2kyRnoY8/7MihaFdUTgaJzPDcLHTegnVhrUuO9FPb14fQ1xxDfXHejlMrjO21XPdeS7gY6iDG8DhV/L3w92f3YlneDM5/0hUDVOUWuSRoPdVWW3W4OWSViU36hGFUb+t29OSmKKfLapTUPwCrDjO4aQrUsFOQ6OytyBTzHQbZtdZSv/eoLxVYmMO63n6QwQqlEzl8lpDtNWlfyA9HOdy3J07NM9B/LxfEVS+hSvPlN+3VC+Wj6tZWr7uTs8YT0ebi1O9Z2iwLQUcgALu6H8AUaAHbkEbdYhVHJtbRhUJZu3+43R829hVf5MFE7Gmdv1lb3ssj4Q06a57DziTCXG07fIV6n9koNPjt3jU5fZvQ97dIEgzPksxQEkrIiQiFrJNEsZSlpzRGNuNNI
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ccea9840-84f0-425c-61c9-08d8035db8d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:20:33.9039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 21gDhdljsHRt5bXJr9R5njf8EydT5UjQfkXSbuHGN/LlkZP4dBszcIcIX8fHngKonoeRyPvIbUCFdK0EGhAZFrRIPzeQlexVUZSiG/SVQsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S46 8/9] ice: fix aRFS after flow
 director delete
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
> Sent: Friday, May 15, 2020 5:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S46 8/9] ice: fix aRFS after flow director
> delete
> 
> From: Henry Tieman <henry.w.tieman@intel.com>
> 
> The logic was missing for adding back perfect flows after flow director filter
> delete. The code now adds perfect flows into the HW tables after filter
> delete.
> 
> Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_ethtool_fdir.c | 27 ++++++++++++++++++-
>  1 file changed, 26 insertions(+), 1 deletion(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
