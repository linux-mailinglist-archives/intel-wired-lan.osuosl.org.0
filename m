Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAD222A482
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:24:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9D2DC892A4;
	Thu, 23 Jul 2020 01:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1tqOYsxWfrQf; Thu, 23 Jul 2020 01:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49D0A892B3;
	Thu, 23 Jul 2020 01:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 654431BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 618F5892A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rZLsmbHvgymd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DD64D892A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:24:32 +0000 (UTC)
IronPort-SDR: 7US37rU88U5yL3qZjfDxX+r2O4p/krSiOdFelkBCCv/hYTrv5ysP4XOdgZ4+yr1mSqFDIEU0ws
 kVzMz0oDyK9A==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="137948524"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="137948524"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:24:32 -0700
IronPort-SDR: 6hsElB9Yp1UABSnzB67/dkps+sWkY4SgGCR/rIFi7ZPXZe3+q4+VqxNPegWSlfz078mNAWhQ7o
 me31ZtF+mmuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="328396382"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 22 Jul 2020 18:24:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:24:31 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:24:31 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:24:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jkqaufx+4KUKmR83RyuCd2d3I2/IpfETSk94kjgxHBfOwGwXMyw5O1nnXf0jauKqTY3vXhrmAXgBzUBY45+HPEr6payoDQjZnjm1XOdPrkj/47WwS5axwdBjIAjaBTHhPxUHkUHigtZCIWUvsvjbRNep1H+qZ1HOCQY5GjGWKsXWEtcpNYmh/BG7l/lmnS7tG3CkaNmGjuowW0WFQsK9rhoN4ratkLg/eCcCDVRGMiIKsR7/SKOcH5HE6316XUKEtoinoTiWdBiKeIRI9Rf6PZNQL+vWEAjPatiEIsGbZpZJEnYW8nwxw9nnbrOEBGwU/I/fk1KabQZnDGlYCR+oaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6Lj0xETs0Z1ftUWxXJck+4IwbDVyjrGubogS0i+cKo=;
 b=nr/NwAPMrwxl1mJSEsvYNq6jONYsJn6iZ8yrQ9A0iJDCWSUHSGb+Ei7UVv1d3ZuM0XkmdLKNUxUY04KGuXM7a8YI3gcVDfN/e0VnoydTucDu6U7VgGxEqR9Cyi13axnboiEqKnc4r2tLFZtOa2QqXkUs/Y0M1nvdP1a0HIwsNv4rPlekDPVYe9leRYRuUf2PSJJrtom/TH95TuahfjHM3wHz682mFfUiyj7GKid6/8dozdrdwksoQW3lt9l5Mq0YoL9ljoIt0iaYVuHpm7KvkovWh64lOTX5hTwGtUEiskRgpEGEDtU9HStWHw0rsrKodfv+ul1BpwQl++ClfOT+iQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l6Lj0xETs0Z1ftUWxXJck+4IwbDVyjrGubogS0i+cKo=;
 b=g8pLYnD9L8aMH8b0un8sviFEa4iGOrVHgtsx7wDXqQJhFHP3mc1e8acazjI5SEDYCMXS+ZcLw5uALSR/qhHE7Sxd3EevWQK0MahrNCzvMjXUQhyfOKE0ZBbj5cVoqg3/y4XSI0yZYKDqtOwuPnwaXS08WU3by1w6SZUlhFvbKmk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1537.namprd11.prod.outlook.com
 (2603:10b6:405:c::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 01:24:30 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:24:30 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 14/15] ice: Report AOC PHY Types as
 Fiber
Thread-Index: AQHWVgzuL8JWMKR+qkSSfTTiMH4sSqkUc9yQ
Date: Thu, 23 Jul 2020 01:24:30 +0000
Message-ID: <BN6PR1101MB2145F3D349C09C1D28606D1B8C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-14-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-14-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 658386ee-037f-4c9e-845f-08d82ea725e6
x-ms-traffictypediagnostic: BN6PR11MB1537:
x-microsoft-antispam-prvs: <BN6PR11MB15378E24C3FEDD2A447ADD4B8C760@BN6PR11MB1537.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:175;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hjBDEBt75EsO135UpU8DEf5HSr33mFalaB067FNAz2luiM17OXXHp9+WvKXr4wnuEXFi6NfZq9loC550zjglkA0zjIS7FNZSH7YlaIHNHnfeJi7lRwyFIC9a+lsQbeZbHoJDg9KkBUgNwN5VgXmV1HKTu90oXpOyrMjIHRgwvT54X2ke39s1qXgUXti3t2PBzUi2kD9o5YCpnHMb8rs4JCerk4Jh6X0LSLMsULr4p+dqBaWcW0NcISm1Sw9sgIgd+hr2vMSguc4i8BLGaAQA7kJ1zv0Ay+fjdSKUl3XK1q6o/SnMA85Wld5FHMRfWsg8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(376002)(366004)(39860400002)(346002)(136003)(66476007)(66946007)(478600001)(7696005)(64756008)(53546011)(76116006)(6506007)(55016002)(66446008)(6916009)(186003)(83380400001)(66556008)(71200400001)(9686003)(2906002)(26005)(52536014)(5660300002)(8676002)(8936002)(33656002)(86362001)(316002)(4744005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: aMYwdYrxgp8DBCwvbr0qB95H9j3jL6sY5nWGuRXvCA0khDPMFE32dXuUR4oWCBEnIrSmAfj6Fs+AJ91WWoRX8OYLIZcEXFraDtD/OJLPC8ucuNw/oRZ09gQn7zjC93NtaXkMJ8CdCc4VdGmdbx1M7Pq37UirWOzBewhHa8KWja0ojtrHh7bD4dZQjuFrYfLF263GpAkHfctilauOuA/fW5IApAPFXOSM1N+9lpVN1Effhna+SIZVmueIC9+5BTKfbT98THrlQy+cJBye+fSO1rRWeKqu52g8v51XEppglB9URVELalx3gNZOPtHkxT6Ry34XO7v59fMh/l7vTx0rINX+ZWDUDa+oAuvKptNTK2/j8A975VL0ny1aCrJAAzxaQrupjDFg426q+RwDybgZLIfLKsipMiNwgqdsSSO0X02STol72P/nT+GJgo1eUxyI/D/SwOynoKPAzpYcTPfcDwgqkNVMpUrsRvhKewBVsRI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 658386ee-037f-4c9e-845f-08d82ea725e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:24:30.1366 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IuJBiIVTRSxFnDfFIJ6YzH6j5kF2r4Oez9oeBRzgPL3zLpv7TkB/UG8MpVpCUmQpuiiHM+97iLCHqR6cp0H3hvY5rNwJRUH0JECLcFemZx0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1537
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 14/15] ice: Report AOC PHY Types
 as Fiber
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
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 14/15] ice: Report AOC PHY Types as
> Fiber
> 
> From: Doug Dziggel <douglas.a.dziggel@intel.com>
> 
> Report AOC types as fiber instead of unknown.
> 
> Signed-off-by: Doug Dziggel <douglas.a.dziggel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
