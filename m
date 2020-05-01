Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B57E1C20D9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 May 2020 00:43:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CF5FF89343;
	Fri,  1 May 2020 22:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id md-jTpeZCeeZ; Fri,  1 May 2020 22:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5A0078934B;
	Fri,  1 May 2020 22:43:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 485591BF45A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A3F2262FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:43:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hPCbfzFCKPTQ for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 May 2020 22:42:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 3A847262D2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 May 2020 22:42:59 +0000 (UTC)
IronPort-SDR: lmNwW1bhSloDzx2xw5fXY9rw6PYne7WZ0KsYNY+EKDKitIrzo2hgiI5iMQj8Q34SLIB8jMepKX
 aK28hkKI5LSw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 15:42:58 -0700
IronPort-SDR: k4lomkRM+fQSlR3RWz+v+x1Kx0aDVtlKwjLITvC3YNZaKQpt+H/Ps/Y5y2eojzKEpOAYZlng+m
 JXAC7R1cIF+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="294938046"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga008.jf.intel.com with ESMTP; 01 May 2020 15:42:58 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:42:58 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 1 May 2020 15:42:57 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 1 May 2020 15:42:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 15:42:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZK1atn5CTC6xwvu4JE6a7hE/CbuIILZ/LmC28gh1P/bJBZXOv/paeuacTSsc1IBNjpyKqodn99Opo8EV+0dEbsWzCRWGGge47dEwwo66ByqtpE/icYG7HQqUuEvgiBjT+it0B/E0q7LQm9t6rmwcREZ5GZwKd4P5GOOl+KyoQWPRMy5Tsf8z57iTQsjppG7VLbgckpqN4STN4mYWbqyt8JOJruVNsLlB9j7KfHtwVmXx/V8CEP7MREVBfhA5sGe5bDR3PaQ3DJFoyG4P7nj60cnM35eZL6ZnNe9/CVosUZzVwlWgHrvQFyqCrWRvraMVw+NWd6LspO7uFBWwtHe5lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6DP2gxAaaGFh1Gk+N6GNaYSCyDxKImKnz4AHm6Mrmcw=;
 b=iuX9OGLYAdGsUDXzqp88vi+lLe4UsR8pCeumQlksc/DWA9OuWRV5a1v/HcTfJL5zsI2qp6pfd/1N6WuhJJayZY/rWZvxy/xjZnBaEFHRyNTk/Ix5zldRzP5bxfXEzb5qNJwZj2XEUrDgM2EixMQozDlpwFjuFlKADrvvvRyAyeSskhrxBtM/c/tpLD+dWD5NLUdSGLfbh0r6rNzjtMFkm7l8UBDaTMReNGTTLFlh8atAWa3t3NceG3cG+KkkBcWJVnlB4IJvxnUyNqaww5pyF+Gg3IVzrCXTDkNTB8BzJ4IILeoRQQ2NHfxvlWD6nkdPDozb6MOOpUqRyX4RW2SR6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6DP2gxAaaGFh1Gk+N6GNaYSCyDxKImKnz4AHm6Mrmcw=;
 b=jdVlzIl9gQh7NJNokXXzdwNvPh6J8AeXn2aRWWEj/oa9OQZw9ohmcz3fyW412iLC1MjScx0YM9iw79qRAuT6JTbgqLHUB7AJmYx/+UxTM1igtU4MPQiDPIgC7N9oUkjwo+HJLnci8VFKC8srtgyXznFOTCUMA/8/s3/FGXsmUHk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3241.namprd11.prod.outlook.com (2603:10b6:5:58::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20; Fri, 1 May 2020 22:42:56 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2937.028; Fri, 1 May 2020
 22:42:56 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 14/19] igc: Refactor
 igc_ethtool_update_nfc_rule()
Thread-Index: AQHWGnWEEebkH4uWxkq4SqMgtUf7q6iT3qQg
Date: Fri, 1 May 2020 22:42:56 +0000
Message-ID: <DM6PR11MB28909D7CF0FC6DDF2BEE554DBCAB0@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200424201623.10971-1-andre.guedes@intel.com>
 <20200424201623.10971-15-andre.guedes@intel.com>
In-Reply-To: <20200424201623.10971-15-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba564ff8-e7e0-4d39-eff4-08d7ee20fe40
x-ms-traffictypediagnostic: DM6PR11MB3241:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3241D9ECB0098B450D1BC4A5BCAB0@DM6PR11MB3241.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0390DB4BDA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pyLGQvom/ZgSk9iTHnCEtSZ2iOGrNoa8hW70sRFylidI6HU0SO3D+VIgxxN8Xl+jaijof+4D0pn/0ygGuB8bFhUH6Hb4nN5gNyei60c2wL6A9b90DKbJX4lQvxqr/qzQgtiyEuMSKVB8XEbPEJ9pTCGzOS813WXFzshXO8fqwkiY90f0h1RtSkf6txdF26Lu8yWx3P+U6/IAX68IMmekrWjeSlvCrsXNnPbUP2Ffh8u041oC4HCehXCoJ4MqwlAyEDbMRFKHXs8PdNv4Ajq7AtF/RPi+9s7NtUO4+GDPIeZVD9zdAAZC9zTQnHFQSLoCOJKYSAb+hSMI28wvR6KRSOObSp+ZaaZt+qKf9W1InDrLicFQI+MTGOIGPcuZFDGkOi5q2NIwAEaaO1ILa1nrykVZUk7oO5VCJdchDptlrdn2zEDgJ4/CITDolkYBYifK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(376002)(346002)(39860400002)(136003)(396003)(66556008)(66476007)(76116006)(6506007)(53546011)(26005)(33656002)(110136005)(316002)(186003)(52536014)(86362001)(8676002)(55016002)(66946007)(66446008)(9686003)(478600001)(71200400001)(64756008)(5660300002)(2906002)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dw8Ipdsw4WeStPeEmrVGWVtDjxuMiD7Z5GsiQg5hy6RsxIRzPPTGRdRUPF0vYmIPzuVMkXnFHUcQQTN/U9hgZv9C9ZrDJAkqRIs31yxAorHj65iVPYD/Q3xX+uWRUdJX5DZPf/KPoVSC59lrXU+dhbt5vMCJSzzVgNdC3Ow2YS9hbpVXo9O16TttuZI/fYDNqk1HlPdFrcrJVbjPibR9ZXnyNcACbO0/XN07x/QdiYgtjqWeMDFl+11Qiam4vGtp2Q4/D3Xr/DTI7w+bKjHfJL1kZChqrELPAyc3uEx1ZJseP+a7QgN9NjsdJXkaRxRVtu9NkY4B/pVMBooldITrmV2EoyxeqvieAxcziBmrjor/8yQzwJBfIhQJ3yteMn9Hx47/SBsNEmWrTbaydh6ctTs7ZQz2cIYJYGgZdUnIPAyoNriYD0e6hrt03x67yYwOeqYGoLJdBLawYXqAVFbQrcYi8eKYm5eMmvBFu16xMgOyP/aqaes3u4W2d4QAf0fuX/tx8qaN/6vyqgzZ37qjg8j+hafKNcnMCnyY5CKz3lbZ0W2vWlja/HVis9rnntPvfOuF681R0493P1a+LdmDlm4V7ahZ5yvwiCvKoNvftV/3AFUZnmB30COciyjaqc6HexeJ5cYmaF0dJatTARcQZWq3lG0XcFBPKJKMvOdZWSGmyWX9UsjK4Lpqe/LpJCj9Sq7eurqGgLf43ZkeYkxJFbNIaQUA+nyP7eyi32RYFlGvieJpZ4IxlKezx6YbH1i/osRns9Te+BBinRaT9e1wSI6sWqZ6GhnIVP9SEBuLueGLZ4UnQSRDro8Rutfl3T21
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ba564ff8-e7e0-4d39-eff4-08d7ee20fe40
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 May 2020 22:42:56.7837 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a4izmOt37/Kg3Uurx5qjDcWU6BRQTmKTs5BqKIsnI5R3AAJMsz67u1oxP/iHBDdPopTfuICNHsHYAPpVJDz8Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3241
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 14/19] igc: Refactor
 igc_ethtool_update_nfc_rule()
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
> Sent: Friday, April 24, 2020 1:16 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 14/19] igc: Refactor
> igc_ethtool_update_nfc_rule()
> 
> Current implementation of igc_ethtool_update_nfc_rule() is a bit
> convoluted since it handles too many things: rule lookup, deletion
> and addition. This patch breaks it into three functions so we simplify
> the code and improve code reuse.
> 
> Code related to rule lookup is refactored out to a new function called
> igc_get_nfc_rule().
> 
> Code related to rule addition is refactored out to a new function called
> igc_add_nfc_rule(). This function enables the rule in hardware and adds
> it to the adapter's list.
> 
> Code related to rule deletion is refactored out to a new function called
> igc_del_nfc_rule(). This function disables the rule in hardware, removes
> it from adapter's list, and deletes it.
> 
> As a byproduct of this refactoring, igc_enable_nfc_rule() and
> igc_disable_nfc_rule() are moved to igc_main.c since they are not used
> in igc_ethtool.c anymore, and igc_restore_nfc_rules() and igc_nfc_rule_
> exit() are moved around to avoid forward declaration.
> 
> Also, since this patch already touches igc_ethtool_get_nfc_rule(), it
> takes the opportunity to remove the 'match_flags' check. Empty flags
> are not allowed to be added so no need to check that.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  18 +-
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 138 ++-----------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 205 ++++++++++++++++---
>  3 files changed, 195 insertions(+), 166 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
