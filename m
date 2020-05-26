Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E00091E2FEE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9629B87CBE;
	Tue, 26 May 2020 20:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fcWw0BQaK+G8; Tue, 26 May 2020 20:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A230B87C4E;
	Tue, 26 May 2020 20:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 401D11BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1B16D2040A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WOCMxqrvJ8tQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:25:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id A6FB720384
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:25:27 +0000 (UTC)
IronPort-SDR: 7y/s9DribhCjmEcYCRbpqCArdfPTUNn3XwXQCFUlSY1gAfMj4g+HnBzZEtMhpuTPmOSrfjLz1D
 uhFI2xDgFrUw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:25:27 -0700
IronPort-SDR: hTAmpjGSgXsn6UQJp9BzanruxwQioaiyBY2vO1UawG/tdL8DFAtIYnbH7pgCylhTykqQ6B8JdD
 IdjjDfcomV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="270205962"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga006.jf.intel.com with ESMTP; 26 May 2020 13:25:26 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:26 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 26 May 2020 13:25:26 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 26 May 2020 13:25:26 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:25:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ie8hWom3lrFBM5JsHl8drlGRmQz9nHDfwKYScXRtWqugtvMH54mytDnfioB2s+6BAOYPclkxRh4UYJ7Vm8OAsq5a6kwsN2OQyqxSmcQIeZrFZ9Sn7UbmreSiKJ5qhmtDfTNTH/5dglhM7o/XY1DY0uNwwbNw6SDdyzB7EdSSPTZsRr8cSsfUumMqVMQb8gN34EydxItX8lUI8sH8/VRVrZSp7ny/mjQ6jq0ibRu1ATcrfHMfeco2kaRDnPkn7Xd+tDBuWOSEusuD3S+DQDslhSVOOJzjwfB7j6AmuPg6HsZHYmFoLl3XU1LcDA8UkR/J1a5zXmoZn8SXjjtzec/KYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vd0NqoIiriBNueS0EPkTxfyA/ugq3SMxmeJyMIWPSoE=;
 b=cDA5LMGxHTbsub7dI2jG30XRh9OBLiGOLWnMZMR01FgoeA9sFF1kaq6NpOk0wqEnB/7brY7Js7qjsPwyxnDdH3ObsKG0qcEbwp+X+6szegBy2KUClivD/FgkBVm4DGSABcUEd5Qtor8MrShVD9w84oMJpV6nhlsZ4hwnGQ1zMPVjGg5kRPgcHcNG8Ly+Yz4IV00GhkSq7hFjah2NttQFMX5sZDCC8fRY90iV5StjmClVhyEH3qIqKM8jn/2lb5C1gtCtd2EUawMF+DZCzrwg3YhjUxS3nsiGTSRn7OUKFvduxRSbQd62EILvRDefHRmE5wbAkbm8dLwaYbWcugiA4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Vd0NqoIiriBNueS0EPkTxfyA/ugq3SMxmeJyMIWPSoE=;
 b=H602AcyEj2Owfm8C53BnJB9yNCqs9gZgRDhj4/Hzo22wZ+s7BMNOfPfyyZORYhr4c91GG+uaz/srEzqXuTvpjyv5o0E+PCcw737mRJ6h8pqhWchSbm4yjfA89MelubwLp3ynLg1LblEQho0B2kR2Avzv3oChg/PAawtzBqwUw6s=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1643.namprd11.prod.outlook.com (2603:10b6:4:b::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Tue, 26 May 2020 20:25:21 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:25:21 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 09/14] ice: Refactor
 ice_setup_rx_ctx
Thread-Index: AQHWKxtgFqwoMrBt1kashMtP1sMKQ6i64USQ
Date: Tue, 26 May 2020 20:25:21 +0000
Message-ID: <DM5PR11MB165939D6D428C1AE34DDC3778CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
 <20200516004226.4795-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 6f852bef-e34a-469e-95e9-08d801b2ea0c
x-ms-traffictypediagnostic: DM5PR11MB1643:
x-microsoft-antispam-prvs: <DM5PR11MB1643DD874032BF3F7006C07C8CB00@DM5PR11MB1643.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5nXe8Ijsgcqur9S3340oLBV2CeCnNEOWlNLzndC8tbBdF+TqjbvNDSS3W3OMqyInDiooHtxdEF1xKUDWsmF04ydHQGqYAFbmg1oSOoFuU1X/bzEoJx55vaXkJrnk+E80ao+IbY+yBNAf5fFx7GbLn3+q0VCAwnpmAPQeMTD+meg3kLmGlT9OuBN5YRU8yU5hd8R+tn+YxtwLAOAVvAWoejLF7rBI4IPsWNW1l4rfELZz0qIBjnYRvmxRNvGkhusGPXPeQEBgGN8r88yCFHFTLMpAYaS1IUIIgWSFHVlIsA5+qzsa3y2v2Mzoq0afpfoKXNNz9MnYnWESG+rp3w2uMw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(346002)(376002)(39860400002)(396003)(136003)(55016002)(316002)(26005)(9686003)(33656002)(186003)(71200400001)(6506007)(53546011)(7696005)(5660300002)(66476007)(478600001)(8676002)(8936002)(2906002)(52536014)(6916009)(66446008)(66946007)(64756008)(86362001)(66556008)(4744005)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: jbmaB1PdUa+goQybNpTYP9ePAWWZL2lLlfz8wdHJBe/kToPf+AOfVnGWaUJJ6v8SBSDUOYoz64CvDIx/QTjc26YMXF5iMfORkZ9P8bVzTHHhdcYXAVyadMjpYSCiPjpGzh1kc8A4WPHZR2zYucM6O99qQp+EeC3dE6anDZRTv2khaMsc5rKe3tcYKz+iYyOPRCEEul9uTvFctC6QMeouKTqZ2OH1hmuloMR9m3vp0s/q8qWn9tOr4PtpIxLjKdrz7Xk6pCp/g9pNIjYkUf9SYjEmZKQjiDcwNvLLRi7bqyLE4N2nP5qAUx5jyjfkZOJYukY2PY9i7QaMGmfbOCIrZh6eOCcknk9U/DkB+y4S+nf7eLzquDY7RpTlTLIPidPSBcjpo29tAcEQ8MKMseBwslxsTRdPIBP6faBCw9WKZcKZ05HWjlQzCAnf3TT2mzUbH4mNiOWGaAo/r36xSwOlzITdV/Bu/U0GRHj8tOUHRfeigKU6Oh1c2c3bNmvp0tt1
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f852bef-e34a-469e-95e9-08d801b2ea0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:25:21.3925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JW4YQklXhCNbYvSLBth+ANdgVEd00yt3rB8KMVF++SGd6hBkcCLk5FF7jhXzORNportalPjfG5lPRXbsPY85vuCLGgJY7kTkX6CGhxWUgWw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1643
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 09/14] ice: Refactor
 ice_setup_rx_ctx
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
> Subject: [Intel-wired-lan] [PATCH S44 09/14] ice: Refactor ice_setup_rx_ctx
> 
> From: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> 
> Move AF_XDP logic and buffer allocation out of ice_setup_rx_ctx() to a new
> function ice_vsi_cfg_rxq(), so the function actually sets up the Rx context.
> 
> Signed-off-by: Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_base.c | 123 +++++++++++++---------
>  drivers/net/ethernet/intel/ice/ice_base.h |   2 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c  |  10 +-
>  drivers/net/ethernet/intel/ice/ice_xsk.c  |   2 +-
>  4 files changed, 80 insertions(+), 57 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
