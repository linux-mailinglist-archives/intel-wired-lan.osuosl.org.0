Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DE7F2443DF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Aug 2020 05:09:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B60B887BC;
	Fri, 14 Aug 2020 03:09:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAZYmyyIkTMf; Fri, 14 Aug 2020 03:09:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 153ED8888C;
	Fri, 14 Aug 2020 03:09:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 003871BF228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E850224B3A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ckwF0TUo3Cf0 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Aug 2020 03:09:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id EF38620482
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Aug 2020 03:09:14 +0000 (UTC)
IronPort-SDR: 33u+C2JMEc4nWowa5xGVYbC5kB2O5SNcnkaTn+z6MPXfBPB/Oirz7QqDK5kw5LrpaAePaHYyOn
 PiD6IYFUxlNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="154315581"
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="154315581"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 20:09:13 -0700
IronPort-SDR: E9TPVYcB+D0+nW6Sc8YpstLYd4230fRjTNQRQmoLughVDBPbsfLwb90jWqdr1GUI/Z0BmZETzY
 iqWCeyshyC/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,310,1592895600"; d="scan'208";a="495598845"
Received: from orsmsx602-2.jf.intel.com (HELO ORSMSX602.amr.corp.intel.com)
 ([10.22.229.82])
 by fmsmga006.fm.intel.com with ESMTP; 13 Aug 2020 20:09:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 20:09:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 20:09:11 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 20:09:11 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 13 Aug 2020 20:09:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZK1an7s51mA7uJV2xbboKACTGvp3l1DygKMMmyhYJJWdCrcPjN/MP4TvlNPsKDJ0JQYC6G5HauxLMG9zYkwyP2pImv06BjBMSj5cvre568CLTuQo/sp4jrtLq4Y1vZ8qfCGxcrE6HlggoRaJvIY2u0erAcJLjpvQaaGTX3jg0EJnNb8S9y5IVOFj2i8zAErFRWnoSJpSC3asvlDOebcy2rCIuqNMSgJmz0u3Fv8BH2IKHqNu3wqSZwUAUcjis2ItMfDAT+RknJFnafB4M/wUjpI4dNDRM7Y9AlzSQU1QC973YXqSxkbd8iChNFQdpuKfDhmOZdhaHt+HPV7JAeFJ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vqbI//9rlZY7FrwI+p8g9cbkCwe+WZjf8dGLETX5Hk=;
 b=jxtb92Y+aijUc79PBbPS5znQ55D1Vz31+hIfPsNFasNtn8c60cRLS9Mz8/l4eqx5pgm3s2UR4KlgSRrkXmAZc+9AWQrtWxrqsqhxAFS1lzDqSvIH4ofYN7UBkUWCt0oQhtcuh4ztRKexUg+HEi+cPaW2JjIuJGnkYgAORIl+nM8GkIBodW3F077uYuySFWOaSlXOrLeBEu5UhyjxU1TH1QRMvi7JuttOviPNxZ6Q3P5B8/w+mhxTboKneqAxUQFsPcOXcUpZBmV4tQN2PK58nwoH1XnJptM9GHuIVEFXcjms4ZcZ/QbkJDdlsZtXgEm8EtnuMmWVKNwNFw6ZPYQGRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5vqbI//9rlZY7FrwI+p8g9cbkCwe+WZjf8dGLETX5Hk=;
 b=y9Eh30Gq44yMBt68XwJRZFAChMSCHiywl2xMAcRG8MZ1VFdINVirkcRoCwy9sCOQ82vC/Aw6fF9tlo7jlYCOehrbKuqQfm05d00Cf5YtRZfb5l7j168ha7rvGRfR6U+igCo7G9AQrtGIHCiY/wckQmTScozGH0zkuW+AH3eVUzE=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR11MB1689.namprd11.prod.outlook.com (2603:10b6:3:14::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3283.20; Fri, 14 Aug 2020 03:09:10 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3261.026; Fri, 14 Aug 2020
 03:09:09 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 3/4] igc: Remove timeout check from
 ptp_tx work
Thread-Index: AQHWZTg9LLPpugxrmEWRyNJCjHNHrKk3BgvQ
Date: Fri, 14 Aug 2020 03:09:08 +0000
Message-ID: <DM6PR11MB289094542BAE69855E545B53BC400@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200728233754.65747-1-andre.guedes@intel.com>
 <20200728233754.65747-4-andre.guedes@intel.com>
In-Reply-To: <20200728233754.65747-4-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.171.58]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b668f82-3c04-43e2-6643-08d83fff69c6
x-ms-traffictypediagnostic: DM5PR11MB1689:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB16894611FCCCFBBDB477EA05BC400@DM5PR11MB1689.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: h/gxplWKRZYYrp7YA2qWxa3hhaOKma3yBqG5MKyReSj7dmz36OGq9pE8PtRePJKQzLRdpULCEuJ0BhxOQ9fLZX/9gc83llOA4D1OG/T1tMjz0BMIipuz8Es1jGz4+rmHXlGUjACJ8a3uSKd+bcTGBbloTU4mWRWT9bLhoARmYniFm+fg+9ZgJ9rmjpQfoUB1jhFtArmXJk3ILf3GEXGePq0ZJaeC6pNzPkODQGrHhwX3kLLcWehOJjCEo3jfnqEFvZxF+YumY1RqmK6nQkf/YtVRYgTJKNMFUbViSvGMDtCDHQyYLJvq84zUcMkvxueFRALxTh4EjVJobAIrISKDNQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(66946007)(76116006)(66446008)(64756008)(66476007)(66556008)(55016002)(33656002)(110136005)(52536014)(5660300002)(2906002)(6506007)(53546011)(316002)(8676002)(8936002)(71200400001)(7696005)(9686003)(4744005)(26005)(478600001)(86362001)(83380400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: oYa7GRV4ltxdRUMx66gXQpJKWtxYnuI68J+2yARUA4dztGeIVElllH3rlhIoLFcrfx8ov2k6h05+TivsnEVzfWLPdkq1nv/7Lifr8M54wuFjZWmT0sJyK4oA6DHsir+VldyANEclYxpAeverqp1nHwIR4Vbatb5IqQpaHAdyeqagl7OBA8XJJA5ikTUI+H2F3qxGVTT7K4N5szbGBK0veF6+YrzpTG707NjblcUtYKpnTovRUAF7aHzHgG6MlYOuSZo5UtLeoqVSvmzOLhQScC5hphCtbLVlu6zj9rBNc8loaH0ZNCuFZmwhti2LJjLrTF0Khg/dwsAsRN3Cme6U9xPmEHNgMlVzJtiWOi8sDpNX3kojmodhJ4Q+75rBRsbEuR9hbBV/ruSzLxxu0ZgpLp0B5QVZo+VQw/M+NQDLqLMEuH8qKBWF6s4uPfOvNJQwvX81UBLmFr9GQFaUUBakE93E+LedHCi0g3jDeC3URsYK8Aee71UhUGpNqjN1pnW/meEW6EDC+DTFPjHZESVonWp0uYrdYGBiw0kxgRNm631707d03mWl7S3b7n/bvkVlt32Cl2jxmwKoIBV02Vs2IdoQvxeOwlr3qGsvos/N1so9+FrXwNskAnNpObI9hWQV4eWWXNzTFMER5lxIxhO/Xg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b668f82-3c04-43e2-6643-08d83fff69c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2020 03:09:09.4656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cW3ssdhkUipIe8dCMzoha0YRYJ3EeEs+1weSUH36Ls0fiuSxJC3khVNVURaLKd3FQudJ3bimQAOSgYUB+ob5BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 3/4] igc: Remove timeout check from
 ptp_tx work
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Andre Guedes
> Sent: Tuesday, July 28, 2020 4:38 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 3/4] igc: Remove timeout check from
> ptp_tx work
> 
> The tx timestamp timeout is already checked by the watchdog_task work
> which runs periodically. In addition to that, from the ptp_tx work
> perspective, if __IGC_PTP_TX_IN_PROGRESS flag is set we always want
> handle the timestamp stored in hardware and update the skb. So this
> patch removes the timeout check in igc_ptp_tx_work() function.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_ptp.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
