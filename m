Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C621B22FCC3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jul 2020 01:14:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7CEB6868E5;
	Mon, 27 Jul 2020 23:14:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r0ML9H-ywxox; Mon, 27 Jul 2020 23:14:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B522D868EF;
	Mon, 27 Jul 2020 23:14:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A82581BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jul 2020 23:14:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A100D868D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jul 2020 23:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jauS_gAEDTsB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Jul 2020 23:14:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D0599868D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Jul 2020 23:14:18 +0000 (UTC)
IronPort-SDR: f0tB0LkmUZl3Fi15vUHpHj3G04wY5T6CIlgyK87LgymwWMFeLoJ+5MwNUgTecXGW/iV2AniHNU
 8upbN2SD6sqg==
X-IronPort-AV: E=McAfee;i="6000,8403,9695"; a="131190117"
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="131190117"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 16:14:17 -0700
IronPort-SDR: A4lot/ky/CrZ4t2us0+hrtCav9XmZYTsGdj9Eb2nbiyB/8VhZNbDxYomcHFGx9STTe/bhOsl4B
 VWR49bH/GZig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,404,1589266800"; d="scan'208";a="490137421"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
 by fmsmga005.fm.intel.com with ESMTP; 27 Jul 2020 16:14:17 -0700
Received: from orsmsx161.amr.corp.intel.com (10.22.240.84) by
 ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jul 2020 16:14:17 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX161.amr.corp.intel.com (10.22.240.84) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jul 2020 16:14:17 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 27 Jul 2020 16:14:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AglU55P6JOWMjRl9hP3TpIWfaZBABcEqYqoVNE7VanCEW0BapJmx5LOrsj5jXpzdkl7nNTzrDnDZ6G29QewnoeRl7t75Gndrq+WA7QRE5YuOUC3aJaKR9krXQxpFgVtWgP4VtpSexy3cMngSP19LLjj+wFK5YrxRTWQPOZFZQrWD6n6i0WRU4z2iJ5HiyeZbi/6J6Du6XQD9bde+NM7SK5mH7/neDQ+AFttGxcLOU7TVvERn8Q/rslx9BcdXcFmNf7gJv5VryaIPq8qIp4OM/g/Mc02vvad3xdWNgVwisKfqQe5BGqVJbW6kwxbW9zX4tTWhWPCObFJftK1ZqfHEow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7IykDmPYiLl/ZJpqX1+BQUVRZ+Bz3dMpy8fUizz5TE=;
 b=L1Yc26Gs+/zXSl2HN1KwBDdi/xNPWC6xiRy+mgZGDSmmjvY1yFaT1CH5sm6JL5KkFKirbifVFC+cYkWCnmA6cbyy9VaJWtyHMxVGI7Xp98WNr0IGj02BqFtQ8QHS55yHJ6I/X+KE2SDcIyZqLLknjbAN5kfW10S3mpO7rH4XiaTp0CMAD7yESbVNnc+0zXuEAglu+AhqD9Qxyu6cn/clHDZdwz5mU62Max/UYHZB0axFsZjo7sYht6bOR/fYEe2KGSCSQaHcMXgtyJOtWxiQGdbWBfSMyChWCxhNPFqt24ra2hCyVeESvS5NuFamsnNmWFyjoN8w+Jpfj3HPk4pYeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n7IykDmPYiLl/ZJpqX1+BQUVRZ+Bz3dMpy8fUizz5TE=;
 b=ajw6P/cAdJQ5B3edEUWHVkg8BdI/fGaAMDP5lAroXkLj8dbafwt8AOdws80iyWXtq/JhdFfUy8iGdjjtMxTtEHbCN17n+bU9z6Odut3z7vgVdKJGZOsxZvhmJDqxmok4Rs4pGWi0ekXsE7OOlbTODRjPPSxJARvyxvvy3AQPv+w=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2542.namprd11.prod.outlook.com (2603:10b6:805:60::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Mon, 27 Jul
 2020 23:14:15 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bda3:d65a:f390:f875%7]) with mapi id 15.20.3216.033; Mon, 27 Jul 2020
 23:14:15 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWYdOfeiNwQ7fIg0WsixjgcruVTKkcE6EA
Date: Mon, 27 Jul 2020 23:14:15 +0000
Message-ID: <6ef09135cb431475f16beb55f79037d5875c40fc.camel@intel.com>
References: <1ad46857df3e932b2e28256a62f7ad32ae03da23.camel@intel.com>
 <20200724155948.9434-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20200724155948.9434-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f1301fd4-ca69-4ba9-94fc-08d83282c7dd
x-ms-traffictypediagnostic: SN6PR11MB2542:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB254244DA5CB2ABC94525BE6CC6720@SN6PR11MB2542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:514;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MKwC/0wgZDVBvXs1hmY6W1LSUjmsWKMJ2VuBj/11QLCjUp+xeKmOPNMDgxL7ST8mGWTom8dwRBIKYMLRXykesma7QGu+ZlVGbjnkdozc/WU6q7Hne+2AwY9tdKx2mqPA/Yk49hEZ8Yb8jOR5Se8Ba5c60aRtDW6qx/ujCIUvZ/v0O0BGkspdGLnfsNyiOzPdgozSqdyX8DR8zJktope3HuyeEGkyYRwZcUlb1izG31R1L/l4jBsH1b3CDn8S5F2oG3Tg3Qy7ap/tgkxnWfI0TkshThADCaDajRoSill3+VVqPCzjHj9QGMf+EXrLSidx/6UUUMoBOafbCgdNp48tTJm1wYA/Iz2F+8dP1kor3vzHsCaRp9VZZ/F2P/Xgv7qidqZMjrLeklhCJqhrPieuhQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(396003)(39860400002)(346002)(366004)(2906002)(83380400001)(2616005)(8676002)(26005)(5660300002)(6512007)(186003)(8936002)(71200400001)(66476007)(6486002)(66556008)(66446008)(6506007)(64756008)(478600001)(6636002)(110136005)(66946007)(966005)(76116006)(36756003)(91956017)(4744005)(316002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /YV9n7FfBe+3BjnxGe0FeobDnT7B43yJl5LpKzAizoANxwntgsXkn1k7FDgW6w9WpmVna2g82Eyc6pUdnNmxUUTBVKmojf8oGb+UFUoRKL2XGjiSTkptv3QGqsoi6iYskp5zwarTmua49wHDoHZ0veO3/v3T/9ieG8dW0rSVQwgm7Al4HB1UpSmCJ95YjOr6AwaA8JuDlUaY8mU+G18B7qbo49Ej8ONPjMsSRdyAb3kcsfVK1Kpdbt6Q+3BeUuEZimAwoGTh/W6imsUtiSM7t/CEwKMfnHpRUWL9nxOqdwJ46iw+WvWzS/LhGOTSo/FF6em+kdNEukd1fNxOaDG7E7eOkaHgINas7vjM7ffC1J0fBdwn8iYRyu4cEMetQVZg3s589uZ/LMT7WamQgWexI/XOgkDqBJEyf0eTbTKfl0x0jKKaUTcxMlFrXsgSKLT+v3UbSRkyDW0fZkmHSxOPq3f0Bb1yv2LlT6Jlt0V9ekf08IL1CFio1FPXopeQgh4F
Content-ID: <82A8E112126C9345BA89A2482A3C5856@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f1301fd4-ca69-4ba9-94fc-08d83282c7dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2020 23:14:15.1471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: klx7mtGlV4IkTEPMnTodx9izLjuWHTAZoz6wF7ogYssoWt3EtoS7C/7X/sEzJdEMo0ZoQurRaJ9cUwi7ae5qDQU8+scSkDp5td2n+DtI5bg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2] i40e: add support for PTP external
 synchronization clock
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

On Fri, 2020-07-24 at 17:59 +0200, Piotr Kwapulinski wrote:
> Add support for external synchronization clock via GPIOs.
> 1PPS signals are handled via the dedicated 3 GPIOs: SDP3_2,
> SDP3_3 and GPIO_4.
> Previously it was not possible to use the external PTP
> synchronization clock.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---

This still doesn't apply. I was able to hand merge the patch but ended
up with a bunch errors when building. I'm guessing whatever this was
prepared against didn't have this patch:


https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net-next.git/commit/drivers/net/ethernet/intel/i40e?id=3c98f9ee6bc280499cbcb6f8e42c001c3bd7caa1

Please use dev-queue that I pointed you to in the other reponse.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
