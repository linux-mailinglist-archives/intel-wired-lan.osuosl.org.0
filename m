Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8361A26E72E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 23:11:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 38CC0876B6;
	Thu, 17 Sep 2020 21:11:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41-t4pwnySxh; Thu, 17 Sep 2020 21:11:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C160A876D1;
	Thu, 17 Sep 2020 21:11:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB0C81BF35E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C6555876B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12VRnVhWUClH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Sep 2020 21:11:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E490876AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Sep 2020 21:11:42 +0000 (UTC)
IronPort-SDR: wGCZpyiAFxgk81RKb8zusM5qITOUgzlXKTHRdSfp7PI/USYz9H4t6STjrS8EYShkTj4zUemu4S
 mCQhvS+c8hLw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="139299238"
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="139299238"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2020 14:11:36 -0700
IronPort-SDR: SRGNh5m1nt6x3wcLWF/PABYT0Gp0QsyLVOjUxjrG8ZZZwmM8JC7RvVoMh+Ru2rXAgjGrgF+gBQ
 c43KbuFsWu8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,272,1596524400"; d="scan'208";a="339566438"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 17 Sep 2020 14:11:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 17 Sep 2020 14:11:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 17 Sep 2020 14:11:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 17 Sep 2020 14:11:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jKLhcUDbIt5egsQJzzMwoB3IDS7wQY4dUSAOqwbgJNx8E7W9yIGh9cNo2Z3QiIosR0Z++L04hQpI1Mf51BscDIKHn4WoIb3TgGg7f59VUZrycE2bRY9IvRnSudClsie+5BNcZ/swV1H+vfs2XE65QV0mX9+x8f+27/WGVK03TjumRzkUHiaNt2uM7jY9K8x7V/2A1Y7Wp5XSwOuETGdP2zjwBEQjSLqsuuRLgh6PKxCn+CFKCfTGCKiFkqrKhfm9n7uE9tWPEWMcRmHMYnY8dHGNeY/0Waiw2+nmZCLgyt0MGbS9cEYSJRBAw0TeG5YpRZE+T37KtQph9AA/kHU/Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJArvnx3QfOt6lNWeckv4FsW19JAMcUnMUHaRCFR/sU=;
 b=CstlZtYnKaER/QQsGtnhZnJKZvdJf9seL/1hiAnZSjL7lGuwiu0BvUfyjUUZyWVG8Brv2k/akDFP9Je9FaD48DDE/8QxNG582dqyLbM5Vh1wIz0ArsEXykvRCmNNiEM62mEPcpszIAOLwDOtyneQf0rjuaGYIK7BGAgwVhJx85J+S8VnPOAIMnB1w1o6kdzEBWjs2bJ5YO65Us9vXgRWXlYOlT4EEpAEW+f3XlNRlTLDd+NVUHE12qOBQPmcEUyOKD7aF6fU+4WoTbcrVJRcb+zf/suY6MaDXY478JwKIRa9KDFw6GG+Tu1CEG7f6OrDa2zOwpNymq1bY6mc5mBmlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZJArvnx3QfOt6lNWeckv4FsW19JAMcUnMUHaRCFR/sU=;
 b=UIlsamDWdLq64xPHRO9uFrTYklfMH86HkGkR9edG/qL688keSJtyknMzW/kL47x5xr5QAx1F+OUf54GViVDVqSi41LGLToFpQ05mnb4dTUIuuypbBkMngLzv430y0cmTyY7XKMzr7YYq/sKFVNC0VRMq0S1TppqmWeCLeUsPqn4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2976.namprd11.prod.outlook.com (2603:10b6:805:d5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 17 Sep
 2020 21:11:32 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579%3]) with mapi id 15.20.3370.019; Thu, 17 Sep 2020
 21:11:32 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "alex.dewar90@gmail.com" <alex.dewar90@gmail.com>
Thread-Topic: [PATCH] i40e: Fix use of uninitialized variable
Thread-Index: AQHWjGsRLgMwwhuISEmenowm+AvAhaltVWSA
Date: Thu, 17 Sep 2020 21:11:32 +0000
Message-ID: <6aaa242f49ccd3824fe4cbb38bada7ccf9add979.camel@intel.com>
References: <20200916204943.41017-1-alex.dewar90@gmail.com>
In-Reply-To: <20200916204943.41017-1-alex.dewar90@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 301e08fe-03b4-4698-3ffa-08d85b4e40b9
x-ms-traffictypediagnostic: SN6PR11MB2976:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2976CF5F7F148C0934D612A1C63E0@SN6PR11MB2976.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cqP7M3hIafKFk19jHsgUsbWrBgbDrUHNMJxPJRK89m3kHPgdlqfzJhJnFQSn7EHX5qbHdK4sy+tz4Wh5u2r2vl8m/Ub7OFK28N5qDgXL+JMi2RSz5MVfmtK4wm67SKl9g7/Elw4Q9KDvQk4uTgOVw3vj+lOuDEJBRn46e4H3QDLtgTJS6/YZufgdiW6+qR7Qdnzl/zR2OfqHgYKXFblWlp/RKBRPJ5+gAR29u9qyRcIgHr0wh9aB5vBPmpXC2YVBhJLShRkEXDPQds4qgtWb8zihFsZeVOj+f+PBHD+0Zn9fa8a+pIjHcB1dsnWjgmIcO+CHpBn7q6741TlGcRCsoUD6YcQbsty/oO95LN8zk8fUObncmTxiFgZvWOg8NxPVnyt835wZfQUoMyJE0x3hbG2Y+Ir1e3BahJaey1+aLxaNca/KcR0saWEXITpBoNBUyzntFJ/VgmgkqMd/OiyCCA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(91956017)(26005)(478600001)(2616005)(2906002)(316002)(186003)(6512007)(8936002)(36756003)(6916009)(71200400001)(6486002)(54906003)(86362001)(4744005)(6506007)(107886003)(83380400001)(8676002)(4326008)(5660300002)(66446008)(66476007)(76116006)(66946007)(966005)(66556008)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Doe8D66bNP1kVv7gPRA0+xSLSGD7nHMjsZIhVVjCMQv63XMq9Q4xZePhov+WpQuBuAubHVl2X4K5YXGKLEB+TTXLlUClOUyVAacMTFbHJD1O2WxdLvnvJz8AWb/BOz0EuNVt2a1EVewQcmXb8U99ILJ0z+mVV5qTxbWDPFHchYNf+ZXYFaBzokqgRQShG1HTxDVXSJbW0Z7IquRVwU+oib/qzCyU50lywH5WjPcf3XL5KSgsHPRg36Iakhmr8zvXFs9KsUUlm7giIARkkBcVYHovTqdXq3AOv+nt29zAOJ5/tRMW2dx9kFKbAJ1eWMVa6x9IajS5viM6/GhAAKIU6vdfCoKOeWijnmj6KtJfmk8gApepwDyBDRYwREgDX/6b5YnWBxG36yV3h+Pe49iH8WK2MH5MnCZZTvh4dzTW9ZkUapoPQUFgcnOgwfEdS2HeMPBUV/4P5mYGWuMH6JfPixhwWq05C3PO0xoSB80TW4Y1ZY5+lg8bYte0VeUuaatKBIitNZzGUbniqJLSmAUr4LRkNSPrTS2yGR8yEZhjxGz6MU/Mow6v4MYhynbdI/20fWve5z1CrTIiTzaEjBw4Bs6Cq625dV0QPxsY1q5nruMSG1sL8DwxxYh1Trp51lxtczZCfXp1SL/D0qojK7SAXQ==
Content-ID: <B58BBCD8D6B73949B64DB887AC86A68E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 301e08fe-03b4-4698-3ffa-08d85b4e40b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2020 21:11:32.3464 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ++Iqyu7I71bJzYniv1KiraVOlHKSFtcfjF4AZX8h6pegGdc+SWu5BGVex45fw49fqnJc1zwhd/oyK6flpYhLdUU0SHL2tty5rO9c/VN8k58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2976
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix use of uninitialized
 variable
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "Topel, Bjorn" <bjorn.topel@intel.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 2020-09-16 at 21:49 +0100, Alex Dewar wrote:
> In i40e_clean_rx_irq_zc(), the variable failure is only set when a
> condition is met, but then its value is used unconditionally. Fix
> this.
> 
> Addresses-Coverity: 1496986 ("Uninitialized value")
> Fixes: 8cbf74149903 ("i40e, xsk: move buffer allocation out of the Rx
> processing loop")
> Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>

Thanks for the patch Alex, however, Dan Carpenter has already submitted
a patch for the same reported issue: 
https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20200916143228.GA764370@mwanda/

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
