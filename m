Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1201B6603
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Apr 2020 23:12:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 075F523358;
	Thu, 23 Apr 2020 21:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id blPgzKk3I6JO; Thu, 23 Apr 2020 21:12:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB49C2353A;
	Thu, 23 Apr 2020 21:12:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F1001BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 699B823358
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:12:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JMLzN7n8YLdZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Apr 2020 21:12:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id 2994C227C4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Apr 2020 21:12:41 +0000 (UTC)
IronPort-SDR: mFuet4ZK8/JLGiPvDzPGSk0KUJlTPNXIoQMv9vc3dyIFNEMrRVO4DbrL+JpUsQMR1RR9A5nYEA
 gJ5w0WSqIvFA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 14:12:40 -0700
IronPort-SDR: yeh15Vo0PAt/t5kJlkIizx/WlQfZiY4lDSeLPL2aMRoe/mM6yWj5m0fk+p4D3Rg2dsN5OokxJB
 HBG57/e1W7kA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,309,1583222400"; d="scan'208";a="335102934"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
 by orsmga001.jf.intel.com with ESMTP; 23 Apr 2020 14:12:40 -0700
Received: from orsmsx113.amr.corp.intel.com (10.22.240.9) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:12:39 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX113.amr.corp.intel.com (10.22.240.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:12:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 23 Apr 2020 14:12:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dlIaegvJaDzJXLmBPnqtxFy6Qj6U1I8lBajXrjyhUbxjThlAtVLzUK8nI9uq0LlTqMAtt3zxM4l8GsIMcuu8JZ4r93LdCiIyls4v2IAj5Mq5i5EY/MNV5uWx8gyKkNP+VZNKwIhOHUcygzMkjV0HJbU1I0ri9D59h5qao7I346wOHQw9PP0eSIiZhrnq4lRl+IeKYQvp9zTI6Xi5kfTElf3aM+1UmJOEVhca1H9emgp+VFOJ8rmRQIrPRoI79zD+TUPHTcskJ/JvO591YEWR5jebcWXYfLAxbqVnhXRpcWKXg0icbbGS31SzYA8yy8W8sDY6GO1ptd2Ojw6qdwZBrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BAFxak95E+NdZ62cnBPaWOWfN3vrHzko36uKmHXzh/I=;
 b=YYly8N707bmxMMWsn3QjMKjHLpPKv+7oNVI7LJ+MOw9gkmnMJy52iiroKJYnHIJDHnRcLNvCKznSXg1ixjgF59tY/3CWAwE7QAz/Q81VBIEKoDj37uyogqKtQXF4Y2ARUr6pnlQMUSD2Dqg8vqpWdCUHD0S0zicAV74qhz+uk2YTgD1QPBPYI8CUvozqc/2E3ZFhbOLfrXUIuoAVEi/dKTMJhCFnH0B21PwmNU4z3dKQ6TJUv8G8lJvOsPeOjq9s3Spsf08OCHAJ6BrlASV12JT63+FND2iH6MuYkM7ShcwxIqFL4ZBjgb27ACeuqQWlY2dHIt9JXJ+t/aTeOCf1cw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BAFxak95E+NdZ62cnBPaWOWfN3vrHzko36uKmHXzh/I=;
 b=jG6ijsHVxQukp53uJOk8fd96oxFFATawlopjuiuS0UzFzsj+fzn7aBU1ZbdJjUaSJyog7tVy0+wznX8OFM313VApd11C2vmgUn43gnBAR2NAyTkIpNulVUKLTi4ANy+CBRakOjkm6qe5tjq1v5lHgvCNSr9jn4jxz9LgkCLtXT8=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB2986.namprd11.prod.outlook.com (2603:10b6:5:61::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.29; Thu, 23 Apr 2020 21:12:39 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Thu, 23 Apr 2020
 21:12:38 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Guedes, Andre" <andre.guedes@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 1/4] igc: Remove IGC_MAC_STATE_SRC_ADDR
 flag
Thread-Index: AQHWD5guYs0H0X0PJUqfHi6gQTLyqaiHSHgQ
Date: Thu, 23 Apr 2020 21:12:38 +0000
Message-ID: <DM6PR11MB28909DC230F1BD9E96611024BCD30@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
 <20200411002834.13916-2-andre.guedes@intel.com>
In-Reply-To: <20200411002834.13916-2-andre.guedes@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.218]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 42a1ed5a-94ae-462e-7067-08d7e7cb0da5
x-ms-traffictypediagnostic: DM6PR11MB2986:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB298611ADA23C6013EECAFB13BCD30@DM6PR11MB2986.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(136003)(39860400002)(366004)(396003)(376002)(52536014)(66556008)(110136005)(316002)(8676002)(76116006)(66946007)(66476007)(186003)(86362001)(9686003)(64756008)(478600001)(8936002)(2906002)(66446008)(33656002)(6506007)(53546011)(71200400001)(5660300002)(55016002)(26005)(81156014)(4744005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GxeDhw3EwuxiHUsE4fyj2JyE3mpIha+Gx4hhpn0OtZl3PDlUSbIsG48e5oxHP71LXMfAlU4uYBUR1uDdzoZ2uMoZCZNsREfVn2rGcVf7k66uPc28KuK/M8KrRgvKRx/B71W0a3gJExl0S4fl8IeJh/C/efnIBa4y3Y0MtRd7aAVL4LT/lAmu4OXxYRcKtSvrZoZ5ha/f7/JXbRXhBwpO0yyl0iXqq2l+z1IEGUOkWMDOhAqm7+2b68RJFw2oU+Gx6YZwbAkFeFtzlhmI2wM8FEjtqwr27SsQTFZmdix9F4gXqUyICMJr6pFYKIqJVI9NbhV8L+e06uCyRDCw6vmcBiSwbs+jQKkREbwk+0HIWqeAbISSC8ktQ/ViopeYZ+XtbmU9QCg7vm08EGQHPUe519fCgAg80V65qTNhzZZREy45tniP0BkyStpgHqDtqMtS
x-ms-exchange-antispam-messagedata: h2nDtkWeiqvtbz341uM/UtqzM6SYBHyaH+UOxOJYnsUUBqsyU/XIdk56EsJWObn2tYCJCtC+sEQ/Fw0RD9ZTOHW5ygXZr7+2cUPmj82f6e5AeGR9csr2+OhBhDYgjCgHquCDAsXJo5DOU63CReORWA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 42a1ed5a-94ae-462e-7067-08d7e7cb0da5
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 21:12:38.8228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tK5Vr43MevSRRw8X1Uvw11+pf+weEVWOuUAf0Y1l38m+zmrTJL4uKNaSJrwe9Gj1XUtPfImJ6na51SCwhmXZBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2986
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/4] igc: Remove
 IGC_MAC_STATE_SRC_ADDR flag
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
> Sent: Friday, April 10, 2020 5:29 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH 1/4] igc: Remove
> IGC_MAC_STATE_SRC_ADDR flag
> 
> MAC address filters based on source address are not currently supported
> by the IGC driver. Despite of that, the driver have some dangling code
> to handle it, inherited from IGB driver. This patch removes that code to
> prepare for a follow up patch that adds proper source MAC address filter
> support.
> 
> Signed-off-by: Andre Guedes <andre.guedes@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  6 ++---
>  drivers/net/ethernet/intel/igc/igc_ethtool.c | 16 ++----------
>  drivers/net/ethernet/intel/igc/igc_main.c    | 27 ++++++--------------
>  3 files changed, 12 insertions(+), 37 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
