Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 348603D2151
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jul 2021 11:56:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C98E282F98;
	Thu, 22 Jul 2021 09:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rxkkRAXX_GOi; Thu, 22 Jul 2021 09:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6EDC8289B;
	Thu, 22 Jul 2021 09:56:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C5861BF575
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 09:55:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 693464031E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 09:55:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JWfWR3RDN9Yz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jul 2021 09:55:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CC35840270
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 09:55:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="191197861"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="191197861"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2021 02:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="433066191"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 22 Jul 2021 02:55:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 22 Jul 2021 02:55:54 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 22 Jul 2021 02:55:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 22 Jul 2021 02:55:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 22 Jul 2021 02:55:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I5Fh00CuQ3FLSHA0hWs9ERVNaDi0NygVS6ps7OFeLodvJgvqoyIR46oH0CzcyjLe/QpZDxrq+xAeynUXhDYtFIoueX5t4u42onsZilJWYgeEjxPLUyfVaVgPevf8ClFWH1a4thqMKxs7XkCREZoVSFpG/W36EwkX6gkkJT/ZARWw/0R1I0lzIOKA0Q/kO2lV2wk7CcPlSZDdgRnHOpjSeAXFA7fXe4ecjSN0+pg5Oaw1tKg2pMcbzQRtjGmjg1c7ZONAV6+da6vmPXyOazMYfz0+5yaJOkohA5gUyRvhrZNcffl+Gbc3k8e+ZFY4Z97ADYpTVoRrouSzweUQthdlYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhbzaKLeVgOvquOSQN8pVDz9IPLTnqrx/4/h4BmrXFY=;
 b=i1779dRVycAuUlqVQMqwP5C6apM0RzqRub49HA2FzJd58kcFpIvwJb+gK3pTA0La+ETlAkBZwqnu+aJ2aflrSMyD8+hZXX2etwWDzMj0iIU9LgPwwIKJgrudBMKgqUqZydXOy1usO91U7Mp88huY56rCePl2qbuVBaKPILmtSD4qvyNFXzMqy2rF9K3B9pkiTIlVgnvdkT+gFIp5HPA8jbID/TKR9R8HKfsCJbmCPF7qV0YbuSZkQT5ZvTybS+DRBky1rsnJK4WFfNVHi087G/dy1RWVboeHFwmWvrxYi4tmh+NN7WyOJ5H6HbL5nAj6ytiCW7+M7nXdQ7NCg/QMVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PhbzaKLeVgOvquOSQN8pVDz9IPLTnqrx/4/h4BmrXFY=;
 b=eJmEH6JlUCcCOG5XomwZbV120ro/tDq3CoH4H0YfFn6YJTkJ52IrOF65mNZwdmeVgunojziOBp+/auWUQfA7+MK4sX+ukG/TdPH3UuvThTrSpn6cA+4s0NLzlaD5KsGYbscWn3jmwix0d5VVmHBvGJXVJT/GI8XKVXIxFrWQyg4=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.23; Thu, 22 Jul
 2021 09:55:10 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::4d0f:77de:b513:595d%5]) with mapi id 15.20.4331.034; Thu, 22 Jul 2021
 09:55:09 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "intel-wired-lan-bounces@osuosl.org" <intel-wired-lan-bounces@osuosl.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix ping is lost after
 untrusted VF had tried to change MAC
Thread-Index: AQHXbBbEsLgWQrtHxUCv8IwWtsre2qs6ZpBwgAeHT6CAAAklwIAM3EKQgAAMRSCAAAVWIIAAAejg
Date: Thu, 22 Jul 2021 09:55:09 +0000
Message-ID: <BYAPR11MB3367A0CAB84E005DB86F4AA3FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20210628121105.20640-1-mateusz.palczewski@intel.com>
 <BN6PR11MB392398056E8C2C4942BEC4038C189@BN6PR11MB3923.namprd11.prod.outlook.com>
 <BYAPR11MB33678799BFFC6AEEEE9EDDCCFC139@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB336713E82D26AEEA08B4A2FAFC139@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB3367955F8C5E5474683E46F7FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB3367A5CD95A08A740B0D3843FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
 <BYAPR11MB3367EF5CEE54FC6415541454FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3367EF5CEE54FC6415541454FCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: osuosl.org; dkim=none (message not signed)
 header.d=none;osuosl.org; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0037e057-44a3-4e34-8996-08d94cf6caeb
x-ms-traffictypediagnostic: BYAPR11MB3367:
x-microsoft-antispam-prvs: <BYAPR11MB33672C150997E694333D018FFCE49@BYAPR11MB3367.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ls4E4Ivav1GXDefXN7EmQL1vDN+rYIOO7r/+lWlKpPPtUDnBeo1sDpsMTdCId0DXUXguWrfQte8p+6OwMt4OPaW0TZuZp17ymi6S/ysi3ToOVRGjXBRNN2fBrF/+GT1EYqh6PnlS36eC/qaJyYpIAeGD3Pu7MHi3yYQWaVlwyMxsa2n+Wta765wqUelh4ddY/CMIfbVbChi11VKMPhKuFe7TiaqxkxOwUTbvR1XrWbsgMzMbaL2tCfAE6JxgFvmGBVz46QvTFmBuYybpK/4GkCEpy7kLI3Z2aj7iS0nAWRwuKxywJeVTYW8aoH6SxAjq6ikIPGDgjN/7GPx2/G4P+H7jIHn5rrXh7u69LbFrhpFtmWhOFaEgCmrdGAmQSxgOz1XQlXl0O4priwpWpl36SPb8p2OzIfOMLqcaYjNTObu5Q6m/17lEzRDARH9ep8QvDW4qHHOPkG5xECF3YEDIWeLHJC0LjLam78BhO/LsEiRndeKq1ffgQSsr4sdy0YWENUQ+60357erhQiymPuVuNwksbelRL+JNqFoYsKemYo727MMbpuVawTXimoTmVGrWeSCQ7XSdkyJuxynD86Aqkpu0UOuzscnh6WxKmdRtl/x+S6137GAo9rJ37khCogN1WwzNb8wsL5K9IpuT3JALnuZuymJ2CSiiSUuVK4/QEmfD74VrDNWITu/6SfNdqn+mMPa3ct2YzZ7TqGRmuZRgEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(52536014)(316002)(122000001)(66476007)(2940100002)(71200400001)(33656002)(64756008)(66446008)(26005)(66946007)(6506007)(86362001)(38100700002)(66556008)(53546011)(8676002)(8936002)(9686003)(110136005)(508600001)(76116006)(186003)(7696005)(55016002)(83380400001)(2906002)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lJ5jIk8VfjylLqo0QGcXSIg2sTMiv94hE9wxUnpjHW1ZSviZXZj5Q3PgEtQr?=
 =?us-ascii?Q?OzWKoJ15A2/f+/LVDbgdiZ3rB29s+0HFVrRxGuF3W32d15IVp1MsK8RAy5Cn?=
 =?us-ascii?Q?RvQkWNjD9lasXsfN0oKOtuTgtMoFU7FV1aLwcvtmFECUX5KewAl4B9zFJ+2t?=
 =?us-ascii?Q?tiTxzCwqsr0mziEdh23uJc+mS5kaQrakhljbyZFdwFRjIovqzgj34ATqWhFZ?=
 =?us-ascii?Q?9eAMTY0EbvEBvEH6nxQ2kEZLaJJ15yrAYmSWmnTZz6Hba+c6usqhsOwmA9Hr?=
 =?us-ascii?Q?QSMSNHMakL/MFhbArifjyIMmsBqLll+UhWTbCfTgBl/lwM7G5OypAEXZSE17?=
 =?us-ascii?Q?w65AXRsy+G2LPnPQdN4IQqeTQOqVwyPZypWDwSFn2I+oIzBUEQlPIo0rjRuY?=
 =?us-ascii?Q?yz5xPx6sTiQv+jvg75aWAEzjIJ/be4yrBrgv9sCFvbRnCPOdcypdr9V6i16F?=
 =?us-ascii?Q?Y7iisrP3h8OCqhl86ecvAl809ZgB6oWSXw1dOyBJUFAg+kl5L0zufdbJ0ajU?=
 =?us-ascii?Q?1yt/C25InCBC+k36Z3CmpQqMSXAa63BCqBoavNJvrg14Wt9nMPx2M/yKJhmo?=
 =?us-ascii?Q?+4e5AQoe4nprEN7wSZNQ5nr7M+lBoiZmpSd5N47ipEG8LKR3YCVEIUk3dobZ?=
 =?us-ascii?Q?VmeNiF3wQc/rs3X+aehkhneHN5BmmftLozwWr4Qerd7XtRxLam6LMFKBgvZ8?=
 =?us-ascii?Q?WUK/SzkK/YuETffpzTThsYJKGSNdKI2pm0wQsjFbQVdxXd6Ij/8Lkek/PUxz?=
 =?us-ascii?Q?49YS6Zlx4Wc65tGAVNXyDGFXxNopjCmlGj+JKaSoA3WkOjcw24o0wL26hlJ0?=
 =?us-ascii?Q?hMdxJ2LfcxpB63uWrvUu6tadiD5vT+cNxPvruhP3Am2AZSVtgBeWXCrLgzKh?=
 =?us-ascii?Q?MhEKHr3MfxIinkNJtBln7CVb/y7y7QG+arJI36RdaRwZgHA9T9CB7gPolkGk?=
 =?us-ascii?Q?ovqSosSbLVGpJoQJmHUv2bJi/dpiyaTxVNy4IxizMmkhuvbRPDbiJj3UjfuU?=
 =?us-ascii?Q?CZceqSnEVJkTJgqTOMAp7d5pyU+/aAywvkxM36Thaq3C8NOMCS72z/OimkR2?=
 =?us-ascii?Q?HY/2AE1D/A6C3SOJOqzFiVpNakxw/O13FKxtliP82f8whK6P2JJJydJDPrZv?=
 =?us-ascii?Q?aVJ6Ox7Atker5HS30g/oDnnsFanbmpuO/I9caqYoI+ZzL7iUQcQ2K7Tfixr9?=
 =?us-ascii?Q?tc9n3DMz+2TPVH+09ZugT96XmEP1r42pkuxznjP3YONofFpD7hNSrLaF/AA3?=
 =?us-ascii?Q?20I6dobASTQV0X+mjFFtdsifuwske+ktzhaDTL3AFnitm5KHDCakS4dadkOI?=
 =?us-ascii?Q?AxZJugdfAD67KoiSvwYdJeOO?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0037e057-44a3-4e34-8996-08d94cf6caeb
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2021 09:55:09.8546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ex4bTLi9WdO1n+eGTzFO3tmT9ig/ydKstkiHaYx6OBsjUXBc0BwBnUZn5X03bE3OEA0yPAqhs+iMV55tlw1eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3367
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix ping is lost after
 untrusted VF had tried to change MAC
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Mateusz Palczewski
> Sent: Monday, June 28, 2021 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>;
> Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>;
> Palczewski, Mateusz <mateusz.palczewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix ping is lost after
> untrusted VF had tried to change MAC
>
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>
> Make changes to MAC address dependent on the response of PF.
> Disallow changes to hw mac address and mac filter from untrusted VF,
> thanks to that ping is not lost if VF tries to change MAC.
> Add a new field in iavf_mac_filter, to indicate whether there was
> response from PF for given filter. Based on this field pass or discard
> the
filter.
> If untrusted VF tried to change it's address, it's not changed.
> Still filter was changed, because of that ping couldn't go through.
>
> Fixes: c5c922b3e09b ("iavf: fix MAC address setting for VFs when
> filter is
> rejected")
> Signed-off-by: Przemyslaw Patynowski
> <przemyslawx.patynowski@intel.com>
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Fixed function names in comments
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  1 +
>  drivers/net/ethernet/intel/iavf/iavf_main.c   |  1 +
>  .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 47 ++++++++++++++++++-
>  3 files changed, 47 insertions(+), 2 deletions(-)
>
 
Tested-by: Gurucharan  G <Gurucharanx.g@intel.com> A Contingent Worker
> at Intel
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
