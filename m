Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5340B1E2FEC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:24:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 03C248869E;
	Tue, 26 May 2020 20:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cQqfequ+2RfS; Tue, 26 May 2020 20:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 990FE886FC;
	Tue, 26 May 2020 20:24:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 983371BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9311D86268
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FT4nsDEVQBZR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:24:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07F0C85754
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:24:41 +0000 (UTC)
IronPort-SDR: CchpzqVUJCtymVnQmCsJ31DeChwOid7RXPXaM7XEgv1HiXlSZr4HXNeRLFSAs5GlR6MY0vTihR
 CZEmsqqNmCmg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:24:41 -0700
IronPort-SDR: QQ3S9VRYeIxzvhmpfMBw9hlT+1T4MycOec7LU5cjMJUAjumV+nYVa4DyfL7CgdwUlFr2EbgUpm
 2578MonuobvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="345295995"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga001.jf.intel.com with ESMTP; 26 May 2020 13:24:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:40 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:24:40 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:24:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dzKqJyswcKfvy3saAOhqsE4Rgxe7AauHnlZBsuUyTA3AB9VgoXXJQ3ySxkYpnvvGBzn5cmsAnuz2KuuojrUAfj326r/hSakpqp2aQMNq4dUJVN1vPLsS5hVFyP9nn5nP4rPKUPZ6M8UCxKUkswHQRUN0GNvHVTTyuqTfsuEWh102pi6ssGshZzlXkF3SPKTvJ6ICG23OEidbkPBrdE0vdZheO9oQr0ZlSaiKpFEf7uHoLfp9My74cblX6g7VyjiRrcxc7dGa9jYtcBmcsqGHEhcy+gR7O/d1fAA9NLVrblYbfSoVaF9fGET9IvNaSrrt9Q9GBq4QHZ/e5/z1MkhH8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6Bgj1IPxnnKbaKrLd6kptd6QBjBuDs7Rf9xZPwK6pU=;
 b=mZbQJ53l3sx+EOuOAx2RM1yYa4WMYx/Y9w6g24TfNXT9kkhPZtSmpXvBwyOJLS0ZQGNy/hkLuW35+YAKkTr3S8Ld/LEx3CqGWEg8I9j/QfbPlXS1jZYTR1BjPQgAqFsPsyOQotntrPtiAmgncC0snFsusmTIRaBppJgTcsBszduos31NygqgPRuiqOVJ71H6q9RhpJIdVUJgLTDumiQdFXZ+Vh24GB6jCXl8n0pZZmz9zvwTtTtiX4TfCx4olLTED2zWk+2zLUlZHr3OifaaaQCvwpYREJmHsnMcRWMxQRQSyuNmD26FSRChap4oN20Qjmen07JVU8h5cIhmU/fPvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q6Bgj1IPxnnKbaKrLd6kptd6QBjBuDs7Rf9xZPwK6pU=;
 b=XjC73rt8kzmA/D9LpDYSKVzYQIM6wq+9lpHedjTMs/E5DXdKaRv4sJnTDBGuJ6tpNmbquNT2i1Heada1dQkXHeqx+AIMah1tHfmPxfSa7h5XFA71BmqGeLoxseqm8ZPoIC6/+Y2YtMiDQHdbMqRF0Vl9XSLqcmcjpeD5BaQAEcw=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:24:39 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:24:38 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 07/14] ice: Refactor Rx checksum
 checks
Thread-Index: AQHWKxtdug4LGEvZwk+s8yx1m8siBqi64RPw
Date: Tue, 26 May 2020 20:24:38 +0000
Message-ID: <DM5PR11MB165987DC85CB7F77E79E3CD88CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-7-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-7-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 5725e946-6e61-4c2c-07f0-08d801b2d0a8
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB16431578B67CE765BAE8D9EF8CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8FJlGx8b1QRSUidka/TC//uK+uGIwG/wAOUCHFtzePMkQwLbwyRmRDmBcl1parnhRmItvdAMCJbwQB2sSBfv1InUXFNEWEqh5pPuQSxJ3mARz7NPG/+Og1ICxLfAjYoXffSD+b02L9gnjDqoIJlNiNAsW4K80VPMdrRLmsfB5yK9Wdw5qsBf1wVXIWsvduAc3llXhETlTrttBxJ4wH768GPuLrMAs2KD/IgCUIgmudc4r3qfpCIfEmUQD7dw5dqp9GQfZ2Cqw2OILu6Qa5FJQ/rMD3lQEkv/nIHR+9oGlhyb9uKhZ6PzfyrubKydRf5Kl7DrEHWBpBS6oJJ5LmCmmQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: vNkD918QrxrUeptXxZ0sE8/LTWwVhPzeAwBCWu21HIJ6ehgLYaDErKxgQ6HYKs8XSoHpwNtJWdOnz1KLxSJXO6RZhLHxCz4QD42kif4xg1yZjVJeb4wQVZBk9PUv36sYQLdFY4KI0PLyLp8JGm4fOvVgfpPMoYgNg8OS7PXy+YxH7P0KSG/GIF1oczcD3r58TukR6narAL45k37hzz8Hg7wGDpyZ7V8m7vKvx0D4m+WcYBLWYMJdGRvbCC5Am9WJIFr4vo5qhPdgg210gGiSiJuE4vd/rxmmKHXcpKrooH5h85teDoLwvwgZy7+KYg7BuH6KGkt8hrsjcB422tb8qV6rwOo+3tkx8p249e1deqaotCGyxFXGwRpNvdGwW9k69eT2D14jBK1UwHiMwACrgPbGXC2ulYFfJBeHEUz2RqlnOWFY44FIRVY6fyK7REjgoaE1DTZwStqxBt9zcrok8+SMas5o41/bDEnYMn3g3SyVMdxufgeN/3nZRPo9/+4A
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 5725e946-6e61-4c2c-07f0-08d801b2d0a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:24:38.8495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Flwx+SQ3bsElapuh6nDlHqD7xTGKrmaql6MiXIQs53ydgPylzJJuwQQE2WNoQGzkURbDDlBootRGMxG9vXHd50wFVsvpM/cAohqA6+H6jsc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 07/14] ice: Refactor Rx checksum
 checks
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
> Subject: [Intel-wired-lan] [PATCH S44 07/14] ice: Refactor Rx checksum
> checks
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> We don't need both rx_status and rx_error parameters, as the latter is a
> subset of the former. Remove rx_error completely and check the right bit in
> rx_status.
> 
> Rename rx_status to rx_status0, and rx_status_err1 to rx_status1. This
> naming more closely reflects the specification.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c | 27 ++++++++-----------
>  1 file changed, 11 insertions(+), 16 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
