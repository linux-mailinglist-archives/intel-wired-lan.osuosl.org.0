Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AE5270AF9
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Sep 2020 07:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC2D4868F6;
	Sat, 19 Sep 2020 05:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yXoOwYZKGrez; Sat, 19 Sep 2020 05:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 08985868F9;
	Sat, 19 Sep 2020 05:42:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24FE51BF83B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 05:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 197D686ED0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 05:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-TQjRV6kj-O for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Sep 2020 05:42:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2ACE886E76
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Sep 2020 05:42:56 +0000 (UTC)
IronPort-SDR: A4/XYIegkpJiz2bWLJ1E34wdU2K2UtxiU2+tmJwABchmJ/+eiGtW5uEAhkFiWrkT/GGNUGmVa5
 uIvPB4Y5ajfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9748"; a="157487990"
X-IronPort-AV: E=Sophos;i="5.77,277,1596524400"; d="scan'208";a="157487990"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2020 22:42:53 -0700
IronPort-SDR: 22bxMUeVApUDY+rmTFmY4TMJnA5djRnUmM2B9KuMXiSdzf7GL+CmQEgJzjegN1ZLZGzra7NFt4
 LcL+n9IQLnxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,277,1596524400"; d="scan'208";a="332937529"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 18 Sep 2020 22:42:52 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 22:42:52 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Sep 2020 22:42:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 18 Sep 2020 22:42:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 18 Sep 2020 22:42:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aKJKNWVoqLYMZDNKFs7ft27yEiMIzeqwKcnZKVlT97nhtKC6fsWEzUi6A3Shk970acHYCGrqzEXf+T7PdsufqNHQRoGMvPsNmgpVZsHweyZBNKewe9F+ahHJ3sfhOPOFtD2KJtgeSGDEWf1BzSw09BGVuu1b6MbP3KHe5vJ/l/5ZqEyn7jfVcb2Nqz80Eia2x7RQQQUCUaDD+cFFOcitWYj/ag9QVVSE2/mjF+bXudWSL21UzRb7JR4vA0LQXulkzDr2h0Ka9dH3oFrkAvYKok1cDad4SoS5wbpGAf/cCTsDfhJEo0l7fKSQKTHW1gZLtdje3YrK65I5YjD/zzQBMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fe7MKlqbG28PU582DN1JUo40YBvIbLo8iSCBA5DSXRM=;
 b=a1JrfRwm9OQOjlt0IaCx48PpapF1JNGOPCba+1TKB/g4lUY8BGgjAJhlXcYttMp0ySEtpsnm0zrxOmhNdjqXXMlJf28khuNwrnGamjueqZGXMniJS8EZtRdagF7SoeCj4NNKlDuOWCbNzw0UQYaXqoemCfcZWM+puguNBdWOc2vmkHAONyZ/8Gx8V8yZdTtpsfBXiyMowN66nSNq3uZun6TIIG3uWpXslsXn9ccUA2JgRZmhyz1LiotFSDoSkTfVx4/g8BG/46FYDm2CSnCRx0JpF/FgCuNtOVgTQz/9i06NKmmi+gRjoN86EUU4m+R1WaVQRGYca5zOLNqbOrT21A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fe7MKlqbG28PU582DN1JUo40YBvIbLo8iSCBA5DSXRM=;
 b=WV2xixBEHF118NrzWU1ckfU6OA+0imvp+GFDV/EX8ZiQ9ynkeMCixRBh9wkvpycp6vszrpA7BpG5nQ6hKsurwq/whXB6KH2ID1UKWQJ95bY7XU6nHVTLytvASD5IUAw8mSj6dVJDxGyLLgzrcM1mLlqnOznnOZDKChfn9ofcEu8=
Received: from SN6PR11MB2896.namprd11.prod.outlook.com (2603:10b6:805:d9::20)
 by SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.14; Sat, 19 Sep
 2020 05:42:44 +0000
Received: from SN6PR11MB2896.namprd11.prod.outlook.com
 ([fe80::c9a8:3bb2:d3cd:a5fc]) by SN6PR11MB2896.namprd11.prod.outlook.com
 ([fe80::c9a8:3bb2:d3cd:a5fc%7]) with mapi id 15.20.3348.019; Sat, 19 Sep 2020
 05:42:44 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "davem@davemloft.net"
 <davem@davemloft.net>
Thread-Topic: [PATCH net-next v1 7/7] ice: convert to new udp_tunnel
 infrastructure
Thread-Index: AQHWX8dTCel01mEOqEm9t9bYtWzD+Klvz3rw
Date: Sat, 19 Sep 2020 05:42:44 +0000
Message-ID: <SN6PR11MB28964136A523A71959C9C1D6BC3C0@SN6PR11MB2896.namprd11.prod.outlook.com>
References: <20200722012716.2814777-1-kuba@kernel.org>
 <20200722012716.2814777-8-kuba@kernel.org>
In-Reply-To: <20200722012716.2814777-8-kuba@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b8d5d36-9807-43ae-9505-08d85c5ed518
x-ms-traffictypediagnostic: SN6PR11MB2557:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2557C5DBA2875CF7B4243D8CBC3C0@SN6PR11MB2557.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NoUYnRIfVcsydqL8qII9Aritebl7pgClSyoxWJMjAVoXDLqXI3BJB4xm42+q7LoqaiE8Fk/gN29UX6uLuUniXclpFWhUdR+v5mlRZq7Qzrq/tw3JI0/XjfgPm5DyaFqwKH2UVFDjoZy0MhkJ3NnTdTPSQyVQzHtS+KobLWhE+liGgS8hEnNIWL+RDeV9zLMPOnZDqRTAL4+LG2i2GVdzwr6GxirhWpK9N8cRFrtPZY6qLOBSRzU4XZZ51hw/PpMaJc6y+wBqoUh4FlATFMpItTFa5gIPWeePIyrrjosoz9oTHyoo1TnpjuxB24Wv0HfG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2896.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(8936002)(71200400001)(8676002)(83380400001)(316002)(186003)(86362001)(26005)(478600001)(55016002)(9686003)(33656002)(4326008)(52536014)(110136005)(54906003)(66476007)(64756008)(5660300002)(76116006)(66446008)(66946007)(66556008)(2906002)(7696005)(53546011)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 1qFGK3H4GMtOg7ofudj8859Kt56N0x7DXCgr9w14mHyTmSbiGRmP5xMLpT4hwe3vcgjGumCqmQwXo9egdOYb93lcHsbZxIVFmcE2Z1lwflcUqbCxbwVpjeDfeXGiN7dA6eFeEVh1TewaWVATQZskBr6YvyzKkLIBaaXbwA5KE8K/ytW13YuEzPJz6vsJ9X0ZLxBGqWJ3PnYJ/nBmuHXKQUP02CdzROFvauBI82F47NC6szXl1/LJ2lzKOO21MPRUdRsSTOagwsulh2cP0v+AYQOIMEO9XdPeZEKRkICA5pz3q45mNrWCCHfi+gkXB4hCmsfI7M9XqFPOdB96YwpN8PNmslqlpqEhnupewo+k9fcjzLDlc6OoH4JaSQaLNfn7qjWnv4Ip3vKlpXg3OHuc7WghmxC7iZ+/Rcv7t9zJxd6PkQqGquUMD1PjxrHWP7IcvIFy/Smr6BkSM5xgXp+Gzq0IQI7WtqyWK7y/qjecwi3VrJBRaysDJWJfgdDCNehUH3dhk9qAqPz12B6Vf7uLcA2C4fWpR2BbMdlMkOwWihXF8ZSKiAvP6kwIjjbMVe2sFU1FMzNBMP7aAZLo68sLLeDez716EqjKwvyW6kXu5tB8Frq7NLqluU/Fo15SaxK/X+GWG/BXgrwCwU4Pj/8VfA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2896.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b8d5d36-9807-43ae-9505-08d85c5ed518
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2020 05:42:44.3635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BNzmCMoc1Ea36lF87BAqoSvmQde+ObsiZ5f47DOO56fYDRBPWNrt18GMfeHE8JYfL0uUQe7STCDyR4ROfTJ68Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 7/7] ice: convert to new
 udp_tunnel infrastructure
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: netdev-owner@vger.kernel.org <netdev-owner@vger.kernel.org> On
> Behalf Of Jakub Kicinski
> Sent: Tuesday, July 21, 2020 6:27 PM
> To: davem@davemloft.net
> Cc: netdev@vger.kernel.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>;
> intel-wired-lan@lists.osuosl.org; Jakub Kicinski <kuba@kernel.org>
> Subject: [PATCH net-next v1 7/7] ice: convert to new udp_tunnel infrastructure
> 
> Convert ice to the new infra, use share port tables.
> 
> Leave a tiny bit more error checking in place than usual,
> because this driver really does quite a bit of magic.
> 
> We need to calculate the number of VxLAN and GENEVE entries
> the firmware has reserved.
> 
> Thanks to the conversion the driver will no longer sleep in
> an atomic section.
> 
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 228 ++++++++----------
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   8 +-
>  .../net/ethernet/intel/ice/ice_flex_type.h    |   5 +-
>  drivers/net/ethernet/intel/ice/ice_main.c     |  97 +++-----
>  drivers/net/ethernet/intel/ice/ice_type.h     |   3 +
>  5 files changed, 135 insertions(+), 206 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
