Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C730E206953
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:06:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BDB8887BC;
	Wed, 24 Jun 2020 01:06:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GGVa4vRLmBjZ; Wed, 24 Jun 2020 01:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6BA7887C1;
	Wed, 24 Jun 2020 01:06:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BCD4F1BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B82758788E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:06:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oGyxmlPnNO9i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:05:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B69178785F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:05:58 +0000 (UTC)
IronPort-SDR: +weHq+ivOLeR2Hv+tRoLD9j110mzTIfMgbslIZ1uvUEpf3l0+PIfVRgBDctymYD+71Q30HIpKE
 91R2pxJDvzMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="123953986"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="123953986"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:05:56 -0700
IronPort-SDR: o6jy/gjR8X7g7ktchjXrMyUOLx2qD6bYArC2Nz6dDZWFj2v4BU3zVwIFBdrwTppwxVWW8Hfgu2
 xTM3QBq0WyMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="479079874"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jun 2020 18:05:55 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:05:55 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 23 Jun 2020 18:05:55 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 23 Jun 2020 18:05:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:05:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M5qvYdxfgm9JuBJb6ASyY+aqEi41+yogXwC4V/NPIWOGqcnVV5io385dCjY747F0LalcU0dBMlsZ+T71IrwEZSlfSJYSgg9X18lfARN1K1i4iCax/IJ7xTH2Qdz3v2c0np8NGVJOB3ctPqpLEiOVyjbvtip1tXphrmst5dI+bujE60IGKXHZ1bBLolPryya7Qlt9ij7wh82DnCrC+vuSNAnXF9W4aa4lXejakDhAaerpQsvOpWUPSBrSrMOEUPlMYRydOJlAofQkrrMMoKHvQ1Jm7R43y81SF9P/7O5ghbrd5jQfFj+C/AxUjas1FGsQJqlm+fX7BG3yL3uiIrZoRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=niTLsDyUKu95NoEJj7jqdCE+5Psi1pDuhzowfJquLH4=;
 b=TEWtFe0okPlzc2aXUhK8mJfmeHXOgaI5GXEYCP3yIr6QJF5ZdaN2an27Hl1fyxosxVBYzamazT3zSpontygvzAWNgopk+v4xOXlB119627SqFnYL35AKUe2VvLXS7PZGQ9K0aZULxfI9owAk0bLN7VhjQ9VjFLlTbAGinS1BdEYD5Fk9Q8KRREf761Zk47qCrYoqtvouXarSpO6AUbf9fU7ktBPp9SWf8gM3YK2vzt+wXsVthphvjQAyGDAFmu/osm0ZyLZzWwFyy1nZtI7l1JCKUnSR6zaEfDUKQGhl97TlJvNP93/2WzE1a5+UpyxIJc7RCknfBf5MclXcHw6Ivw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=niTLsDyUKu95NoEJj7jqdCE+5Psi1pDuhzowfJquLH4=;
 b=hzWzXtzRn5CsCv6VW/Dvf7Bdc/XQS+Ojm86vYZQk+uLbD3cVMybEyrRTb4bY0sMj8Z6DUlO1RQ38gndHjjTKV62O8+5DCm5GNLE7NKyUGbf4Tchg8ON8rbVIL4nqPfNXLFztKryMQYaQecGR99ZV7Go+CB0Ncml7A+xaOZUissg=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB4513.namprd11.prod.outlook.com (2603:10b6:5:2a2::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Wed, 24 Jun 2020 01:05:48 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 01:05:48 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
Thread-Index: AQHWOmLcA/X5ncuyAUa97uww/dNjhqjnEh1A
Date: Wed, 24 Jun 2020 01:05:47 +0000
Message-ID: <DM6PR11MB2890D64AD6055EB780EF3885BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200604112516.44949-1-sasha.neftin@intel.com>
In-Reply-To: <20200604112516.44949-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83bbe3c5-6e48-485a-2087-08d817dabb08
x-ms-traffictypediagnostic: DM6PR11MB4513:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB4513BA0E2105794785256B89BC950@DM6PR11MB4513.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:989;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yq9Ajtaog3UTGQYumkfMpaTZw/XrDMz1WwcLOjH6/dZT9hPpNRXpsuWB635OdcUkbFWQ7KcGTU05FcQnUlRFGeHGHqsSXrZIuKCJngaGYnir+waAibm/YqwaLDx4OoEQATBYQBYNF1/xNg0vCDDOlpDR+PhVY+uKyWTxDba2KreCggQetwNJTxdUmBFS+TGaz2PHFHWmi/UEQpfwL5bIow+6EY3jBX4KpFgLzHajc8ZswTl0SlrbHfJBRubbqinyB0Z8MMoYLGsG6lgiedMq1FrLXpsuvhK6+AG52pjLFQhtvAspx28sTO+BM/HbLAi5oSuXTZHlbgtkOviNYZUlew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(346002)(396003)(376002)(71200400001)(76116006)(5660300002)(478600001)(4744005)(33656002)(86362001)(64756008)(66556008)(66446008)(66476007)(8936002)(8676002)(53546011)(26005)(6506007)(66946007)(7696005)(110136005)(83380400001)(2906002)(186003)(316002)(55016002)(9686003)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: HrPpAQMv741EG0/gMSr2SQXS5THQE21r7cGeYA6eT3loVVHCWq0bffzk6WP93dJ3Xa8l5zgaXgoURItfT7wHqtS2inFV2vcid6JNOtLE47t0DibobB7e0UT90OwS4Xr7Kdx7DAc534bRcVqyztWefOAp4P4twJQMEqjbSuZ1ZuZ/z43NOzwU1hnRqd8FXMAr3z5azc+PjpTzkmGowI8kbQNkAjN49Nsv184X77esLnij4lrGRI7UwJsw7w2D12y2/1OS6yJhmnSFWTpdC3GVOUUt1YQItSTLVmIw+aCBjg/HV1UyYKbn59y1inM0KWuXb9bdxZTYL084+dLvgkslMXHqqyFzHqbLmndERCBh+kp/gbSEn5qTarkJhC06kKE6WZsd97JtAMvmveQ//kdHJP/qEm5KRIYJ9LzJNhwF2OdKhoK2I25DKvc3TOdt0jIv4/vlvthxHtCq9ny+XLno89WcWs9ZdeydzzPyUXNQLaM=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 83bbe3c5-6e48-485a-2087-08d817dabb08
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:05:47.9307 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: X8CzKpG/FOG8fdWqlnk3rhY29NffKgrpe5u5iZP50EA188DPuVOOli//4/d54dURQaBDB5i2C5jbHijWH23U3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
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
> Sasha Neftin
> Sent: Thursday, June 4, 2020 4:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Add LPI counters
> 
> Add EEE TX LPI and EEE RX LPI counters. A EEE TX LPI event
> occurs when the transmitter enters EEE (IEEE 802.3az) LPI
> state. A EEE RX LPI event ocuurs when the receiver detect
> link partner entry into EEE(IEEE 802.3az) LPI state.

Are these counters exposed anywhere I can view them? 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
