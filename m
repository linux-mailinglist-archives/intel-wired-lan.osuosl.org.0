Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61691222A68
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jul 2020 19:50:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19B9D87AC5;
	Thu, 16 Jul 2020 17:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lR9SR+73FTHQ; Thu, 16 Jul 2020 17:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43A9E87CB6;
	Thu, 16 Jul 2020 17:50:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A26AD1BF841
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9CACE89A90
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:50:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qteUDIHHpKTQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jul 2020 17:50:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1C197894C0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jul 2020 17:50:07 +0000 (UTC)
IronPort-SDR: QRtRIuZt6T4+HYe/RrrzOg7LB1xBzHUxwnnLPsFDfVnrJKJbVzxJKbUyna8Yxkb4VjSTIqP0W8
 2FVB3GeDv0mA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="136910537"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="136910537"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:50:06 -0700
IronPort-SDR: +rOjHH5qZJHC4jh5PjKDc2iMXbGpg2kNNdWMJ4M4JIJVpzeFqriTzEOtQDesQ926BKOly9ihsY
 a62JPooqf51g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="326593978"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by orsmga007.jf.intel.com with ESMTP; 16 Jul 2020 10:50:06 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:50:06 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:50:05 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 16 Jul 2020 10:50:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENY1D4oXkpRrier6teSZ9EWXrrLzfl/QYfs6/GDFCFI1iw7X2Ttv1CbuTfy3yui+mt6isGIYJvHDe7HCJARcHpW7DEUXkci8mZH7rQRuy/cQrojFm53PYr0wq/blfDLz85xpMSFED1zj24GMnTvrrmKtwnKIqCisCxhkMA284UDDHHfNpwt7ddai+o+5DNxMxOGghLsxwSp7D5S6lqpRsFXrUqwuhL3FdyoYXJw6fFwluosbKrm+xDkxNw3Gg5YVHclxHB4QWnNzuasBpZfxKl+LP8MMHujLE8EbdpyrSaERrTKy/B/x4ehJZMCpH053jz3mnXvp7XxiwW5tVemO1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+64/t7hEsgei0w0H4A4UUkDCZgieJJnxQvgqt9iBxmQ=;
 b=V/xlU+GD2jW22Aj0b0ARr8Z/5xvH9RzH0ff/6ssCjEKiq+6Sfjn8Gk3zOEXm6q/moeJ33roDTBuxGgltBrShRdh+168xuN5ev45wh4w3+r4CXMMGfzFu42W5cWhTtGDj853gCqufgAE50fFptebvuWhTsT+RjKPF+IprrvpCBSKd9PBNf1g5z7+wepOeKBR5W2qYnJ/OV5oG05OQd780HSqS0iBYFHfgNntA7fJYmyL3rZyp0cW4mSjxNUw4s6baZ/2iCjEytysC7xVysVbOOhzeYV4hqzk+mluSTZgNQW6lgLSIHGF2bDowIP1FaW4bZxVug3Z8YQ+Yc2way5N6EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+64/t7hEsgei0w0H4A4UUkDCZgieJJnxQvgqt9iBxmQ=;
 b=zfSTMVnO3SOm7FTeuzT3TRmmbXxpE7v3FAOhgo4NyyZErWKRgrdqA3xFGbRcSm6VG4ohJHFapfiBUez38oFjsz32Kljbfh3iy4DL5bVKFoOwc+/hEZzp/vsBK5U/nDOY/BPkOtFTxhfGVjIgQm/2EUZglkzoB+PnhshW+ir0TNE=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1459.namprd11.prod.outlook.com
 (2603:10b6:405:a::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3174.20; Thu, 16 Jul
 2020 17:50:04 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.018; Thu, 16 Jul 2020
 17:50:04 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S50 09/15] ice: distribute Tx queues
 evenly
Thread-Index: AQHWWVg/K3dYmi56BUi6ugpSDT1wrKkKgE3Q
Date: Thu, 16 Jul 2020 17:50:04 +0000
Message-ID: <BN6PR1101MB21450B9DAFEE1DC1B8EB7DB38C7F0@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200713205318.32425-1-anthony.l.nguyen@intel.com>
 <20200713205318.32425-9-anthony.l.nguyen@intel.com>
In-Reply-To: <20200713205318.32425-9-anthony.l.nguyen@intel.com>
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
x-ms-office365-filtering-correlation-id: 5a768ff1-8b6d-47b8-f6e2-08d829b0ab9b
x-ms-traffictypediagnostic: BN6PR11MB1459:
x-microsoft-antispam-prvs: <BN6PR11MB14591EA0C76AF4BC1ADEDB7E8C7F0@BN6PR11MB1459.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 521NI16/r6IXBCwRS5px1xYXlgw8Nsk0DVTaWETzFphdZlsAieAP+WVz+h0vJKZnsElOy+8G5aHd4b9mh6CvamQnrxEKIaEYvfdTUmPAylQ/raNCip8Tv0aOOAKehCjKMbLzR9grdp5HDkoJ3BkKluxYbZbWMvSjeY0Rzb9yZIl+t+o+1g7pdlyv/jguXIijVl0e1u4kMtkxuzSJUuax8wUhmJlY+N2gn0pPpdBNoevG402aenJvKK7lOqschBPZQSZS+2ZWd4gNgAeumosWE3PR0WFAl3TerBN1u8zr6Ptjt3z2Jh7c8nY6db9+TsPs
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(376002)(396003)(346002)(26005)(7696005)(9686003)(55016002)(53546011)(316002)(71200400001)(2906002)(8936002)(8676002)(66476007)(5660300002)(64756008)(6916009)(66556008)(6506007)(186003)(83380400001)(86362001)(76116006)(66446008)(66946007)(33656002)(478600001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: OuF7LmGryudtZ5H1/E4BxK9WeqvHp5GqcZrpiX+TRqxp6YT3efttnSufN3BhDTuYWUw+ETqgmdWeQhIXPylXLX+C7gOBEMVFaOErOy2ofAlHNzFEZUEf5UO1D8B/qiZGLnNSwVS/jgRtu4pEIb9mtcuVrvRmh/51veX1/g91tqJOzXSlAQPF1XeE/SK3rLZbrRJrYJQkDEHbjJxGotsQYkIbc8CIrmhlzfC1VOCyjJN3ZMx0k6elDEQzT+CPXliumRk+7eAmfSQVRCvjWXR8COf2lu/exatQsM1abptmiJ9XwOdQlE1q7jJ18rUoiKlpo4nPPFzopdMADcxCpcTGDcCnu0HaGAx5P5nF2G9qqlcfkRwpDuY/EiSfGi0i0Im64hNDJX1j0G3c2vOH+KjTRxiwjKh916rBvJEme2jR1k8E5ToAjSctpD7oJrN+llSOAxJhJLHNIKmzjBsb2CxG+/IM7OjhzQqE5KlPE2F9uJ6ujT5KKhK9Zhw9y2XS8a4f
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a768ff1-8b6d-47b8-f6e2-08d829b0ab9b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jul 2020 17:50:04.2783 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wpxxqJUH09a7mRC6z5OnQ1erRw5k6MPpYUrM9FxPm4TL7beVE6kefSl5+WIONuHLmvUbjrRuHec83dqeW9qxa9QWGru4hcIF8W4NWz42JY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S50 09/15] ice: distribute Tx queues
 evenly
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
> Subject: [Intel-wired-lan] [PATCH S50 09/15] ice: distribute Tx queues evenly
> 
> From: Victor Raj <victor.raj@intel.com>
> 
> Distribute the Tx queues evenly across all queue groups. This will help the
> queues to get more equal sharing among the queues when all are in use.
> 
> In the previous algorithm, the next queue group node will be picked up only
> after the previous one filled with max children.
> For example: if VSI is configured with 9 queues, the first 8 queues will be
> assigned to queue group 1 and the 9th queue will be assigned to queue
> group 2.
> 
> The 2 queue groups split the bandwidth between them equally (50:50).
> The first queue group node will share the 50% bandwidth with all of its
> children (8 queues). And the second queue group node will share the entire
> 50% bandwidth with its only children.
> 
> The new algorithm will fix this issue.
> 
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sched.c | 55 ++++++++++++++++++++--
>  1 file changed, 51 insertions(+), 4 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
