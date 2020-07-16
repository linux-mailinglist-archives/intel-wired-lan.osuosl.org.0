Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7428222A63
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:49:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9538B86B2F;
	Thu, 16 Jul 2020 17:49:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFqKT3TQpAXl; Thu, 16 Jul 2020 17:49:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EC0CB8640E;
	Thu, 16 Jul 2020 17:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 860A31BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7915A22E3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deW2EZwlxCbc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by silver.osuosl.org (Postfix) with ESMTPS id A24C822882
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:49:27 +0000 (UTC)
IronPort-SDR: 23LHbfQxOnRboFCcy4v115TC6O9zKHI22dYdwSEUjGnUvMbuzKP/9wXaE6bfFONpPgPkpg7LGo
 3EXrMSjL5Xiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="137580559"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="137580559"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:49:27 -0700
IronPort-SDR: x+814zj9eJCwuAGmhdaDI/K5JSwXbZIRmULHJRKjtZkLZB9HMhmUG6zAZIxj6XhpNjb7pkmD82
 4s/hrPmURtKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="282529032"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 16 Jul 2020 10:49:27 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:26 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX153.amr.corp.intel.com (10.22.226.247) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:49:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:48:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5RJaGRCTDpSRA3Nh2rG1gTbwSqVq0KezbM1NB+3pxT5pf8ksgYEbgknkYB/WzitE2l4zp5mURtnjKbyF4weQxUHGLNmWkf9YiXXNjNMb7fI+cV4ugaf5/jcgu34bMrcJxT30uKh1LeIXZAjpvnuvv3rlM6K7Ba3Kf6JJ6Y0FbIwyAevg97z5KwO3TOJIM3SJfJAHsG6w7Xl7qTyhW3X9CYpKtncjDxQAlODHsgT80dJmMf3RA1VTWdXZ1kliZ5eUxONskz045wmWiyukm3RGzNmlgt/xZCrXeSCON/jld/O2UjocrV+EXVBy9AdgTP4usqphGelrrJAGfktWn7RWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TxiajvsXDHB4uDmikf1UMiW6cxzbTecr6jAWZoM0Jsk=;
 b=cjXbOjNfy8VQpFG79iP2izCEfzGLQhr/rNSnvqAIg7ET7sg2Aeq6vj0lP0XXQ3W8224WW+xyWL9P/d0msJ7nzWM8m2UPjZ5pPQ4fxR7Um8YzdDiwr3uCcKuCQc9VVrSPg7F4iusi5VclBlBe+yfwk3ok5AOEcTTBSBARBs8l9tjCzdLJnV7537GCCcRUYFr5sFtsj9OTuvyPIFnKnXrHEYJCjt/esM6N36D1b0otmFuvPa+JrIq0llNBCWBI8cn3+6z30JXVm5eNgK0tAlZQ7vH0MZ3ygcl35xAPE9EfXlwDXZfym4/2qN4gYDTv4yiiWA8O+Xm+tmMApWIMXZSvig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TxiajvsXDHB4uDmikf1UMiW6cxzbTecr6jAWZoM0Jsk=;
 b=u1F3amgJ67tidzDalfvSAUznjj4uOzkXIcUCXsbsQfdsNgQkjLTJrqI3npXxToMO2yX7a89esfdMmYDPhH1wDEgixAgV9MgVzops2wNuBv8edPewN5JmMaki4uEC6WZg5g+R+64xKtgjJqKbQH3oQECC5bkgfyJXhpUFn8aFmRs=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1459.namprd11.prod.outlook.com
 (2603:10b6:405:a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Thu, 16 Jul
 2020 17:48:20 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:48:20 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 12/15] ice: cleanup VSI on probe
 fail
Thread-Index: AQHWWVg9OvS4ACcsnUSRCNChHcHPYqkKf9NQ
Date: Thu, 16 Jul 2020 17:48:20 +0000
Message-ID: <BN6PR1101MB21458DEE0F3B08583566CA448C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-12-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 598070c2-41b3-4d60-5448-08d829b06db7
x-ms-traffictypediagnostic: BN6PR11MB1459:
x-microsoft-antispam-prvs: <BN6PR11MB145918851FADA11FC6FDFE348C7F0@BN6PR11MB1459.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P23pa0mZZmeLXtbUPbLugPBoY7Z3/XlXQEQEE0OASto925BwELLgfNLpSUvwGzlwcK6cxQDaGoblm7huTTBhXwBSKiSir2jjiXSxma5Sj5AYne4YthBs3xDmKhoNSKqyTvUyO6PvnBTd9o9kgG6xsg+rujNyy3zomyNrhTiCCDxCX1bqKIl7OOyU0tDl6KbtK3rVMMBxqfpilxiIy+ZoNMPnknSEtqLPDA9jRW76R+ztgfUS20zvxJ479uzpsTUHhfQdu3hKsgeXezOH3PhhVZwCTNBhDw12aAWa1EmJX7jEFzAR6/7sF0yc790av76v
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(26005)(7696005)(9686003)(55016002)(53546011)(316002)(71200400001)(2906002)(8936002)(8676002)(66476007)(5660300002)(64756008)(6916009)(66556008)(6506007)(186003)(83380400001)(86362001)(76116006)(66446008)(66946007)(4744005)(33656002)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: rE6JPF0d5Eo2u0s6dIDuTynlxs0TLNkhZD5lAlUvxyxUgGdlVW9g6aba39bGU2qjIumQvoVFujs2g4/cxTlDCpAsxhjyWm4Io8IbHaG93Ny6o4rSOuUHUPC/vMw32NkG7BLO+mhhL5uf2f7jeqEh74xUG81HCeWqg8SL3Vd7jasxEKPeKVH2hjbbMNsOHHxxz7gD40/6Wn5H4pFgBL/LywoA845BCiToj7m8GP6nq0pzYBflFMCUkn6VQibsd8aQF1oihusyu6U2wBRjW86s1mg1xWDPJVer+z+60YmuNrDg0mRwb4ja0Gqhkp/6TU3bzFHQ1NV6EJPhL9JemqDHEOdH7GVzWp3jK4gGwZX1da0/55zjEny0olSlmk6nbjBtROJWn2YKdWun/TKAVdXuX3etBo4eRQyFsTpUK8TTvtH9YCl/RppNLu23joxfBluPwFbYI98r6RGDFCGwZJ7TneIKbxx03rgXutO5xSygRos=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 598070c2-41b3-4d60-5448-08d829b06db7
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:48:20.3399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7lZVSrkdMrwOKLTi49LVs3ofoxXVJQ3buONmps7yIHD/8GKL9+oaZi/sUZ2BHisg7L2iUpycDq9Es2VLrHFo/+qIi4oooaNfjzYk7xfppLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 12/15] ice: cleanup VSI on probe
 fail
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
> Sent: Monday, July 13, 2020 1:53 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S50 12/15] ice: cleanup VSI on probe fail
> 
> From: Marcin Szycik <marcin.szycik@intel.com>
> 
> As part of ice_setup_pf_sw() a PF VSI is setup; release the VSI in case of
> failure.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
