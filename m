Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0733D274F9F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Sep 2020 05:41:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 86A2485E7D;
	Wed, 23 Sep 2020 03:41:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A3SqkWzXlyfx; Wed, 23 Sep 2020 03:41:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B97F85E40;
	Wed, 23 Sep 2020 03:41:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74A2E1BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:41:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6FDBD8632E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:41:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GVbP0pA-4TeX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Sep 2020 03:41:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94095860FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Sep 2020 03:41:33 +0000 (UTC)
IronPort-SDR: SV/1Lbk+lz0CXoT2Aq9ZguW1b6AC0cIHwtTPl5ooZsfmL6xh25I/PIJlu8cJGd86+iRg5xgeTY
 THJqjMYX1msw==
X-IronPort-AV: E=McAfee;i="6000,8403,9752"; a="161711261"
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="161711261"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2020 20:41:32 -0700
IronPort-SDR: JNTGRkhLMCkN24rh2bLxwcRLIcNuvJAe1MholvqGpw97yxkGi3LqnGjKuS7lljhdMfbYLKMP4C
 QkwXucZggHgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,293,1596524400"; d="scan'208";a="338510201"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga008.jf.intel.com with ESMTP; 22 Sep 2020 20:41:32 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 22 Sep 2020 20:41:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 22 Sep 2020 20:41:32 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 22 Sep 2020 20:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y9Jxl0vPdjOgb9xH08mUr/OhDFa/TlFc+0i5tgP1Jq1mA/cpF9v4SbnJP8lL04sS9kg9ts2eYFgUPrUnOrK9VFMK0iClnGoFl/dO1AEp4NzJWUa6iff/N6YXfNLVQKBI00IrjBZyddyKClDJn7FkKlqGG3D73Bw8g6XNcloqpII65q3zUejTCLBK13aqgMdmWBM8Tyo5X6PO4Gm8y7UScyMydmyGJIcCpnpHT71p7B+qDCyTS87UBWPu+27YwzUcXjZjLKVQQJLIP56paqj/RsqpW0mlfE5rTqNLJZ7ukuRudO/lGzfOCR5djzezFJsJFfEBFnwepLT+G7AIV64T/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tCISHPg1gNkHzk/BY0tZXdTjtiDlI6kbfjI3ronY28=;
 b=NB+aTFr7JK1J9hASgpuoen/nlSEEBoBDLYYj7gWOQOaBGKusLrpYe4oXo4aNOY6ATZ74pFZoR9mTmncDT8+WQzPVwkj0W/wy5bxhAwCppSK/GcWqLZeniOYu3XsjZP9FSGRovFCa6lTpcgSTtOVc2Bbth90ueRbr36kNuuk8t6RnY5Q06K7uacvwJwHmsyOrk7TqT0DbSjlbsisyf6le+XFJ+vFOCf1NLYHn2uxvW/vSDPBvLfBHT6nIZcnHUgpN1aeVyNCN7WrD0NkDiUWqeEXGfCUFzSIRoOVTCzpaXNFqNzIXF9GQ/jOZsuWSxmDz1a3rjN6hBam6602tn78VrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/tCISHPg1gNkHzk/BY0tZXdTjtiDlI6kbfjI3ronY28=;
 b=jBtQMKNwc/nXf9JARjn2CfpJ/pkPh7P1dLxbefDqPfHfOcCEbfR/jgKLAvrruOHjnEmQ9kD0Hg1lV5nP5fPvNoDqrqKE/1M2zuVhA88unme32D3vjMh6ohwskdBDQebhlD2KWQN7jNaewB13wnTVcwVaCPNv+P38k7PIj/HtIuA=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3084.namprd11.prod.outlook.com (2603:10b6:5:6c::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3391.11; Wed, 23 Sep 2020 03:40:56 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::8c79:e56f:7f8b:ebe4%7]) with mapi id 15.20.3391.019; Wed, 23 Sep 2020
 03:40:56 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] intel-ethernet: make W=1
 build cleanly
Thread-Index: AQHWg19VtLvlC9/NXUWyr9S4NtelG6l1r7Sg
Date: Wed, 23 Sep 2020 03:40:56 +0000
Message-ID: <DM6PR11MB289091A9803D744F5033A0D5BC380@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200904203849.2248944-1-jesse.brandeburg@intel.com>
In-Reply-To: <20200904203849.2248944-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.208.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8dcf9189-432e-4941-0e7b-08d85f727acd
x-ms-traffictypediagnostic: DM6PR11MB3084:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3084A7A777105064CC3DE84DBC380@DM6PR11MB3084.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f5rEEOQ9UFCO80vXkO0bKB3kJS5mkc7z8G3Bqqzx4fjlKuWaYa/5v/pAUNu9r0jl3iau31clwHAKblJBBrkG/AXufSbfWL5iL4MGmILeqM0HjWFJZsMBzgQuDJrtU5kLHF+voUk3bwpnKD+D4sDTyzSmKMiIasiQSZ9XFb1dVZ+goX2As1+kNlrbQUQsmAwt3cGnUGtqcTXvmc36M3Upkctr2V7VpTG0lRkgMWi6LGRyYCEmrL3BbEWj84pb01Vc7K09GtroxRUKX+3jTs8ShNb1SCQuVki9URLE/P2FtWIuZ0VU04rnVQc1t3LFIOLZk6dGazv2kC0bkUMu/FEVMIhEipt2UIOIn7FiENkNzkmBJb+uDTw6pS8eHhQdyofQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(346002)(396003)(136003)(366004)(186003)(53546011)(71200400001)(8936002)(6506007)(33656002)(110136005)(2906002)(26005)(86362001)(316002)(83380400001)(66476007)(52536014)(7696005)(66556008)(66946007)(66446008)(8676002)(64756008)(5660300002)(55016002)(9686003)(478600001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: pF1Dv8m7Vbk0aggzNWrdHk1VIQmbvPDK6S0ldjnAE87R1QiHtLtOG0MtDieo1EOuhC2KouGHxcdjn0ep3CrAiiINdPwOh8/yuLokaAJ/6UyRZZM37I6FUY20RJ8cQPmrA3G/nTOzMn23GX4PTf+F+pDL7sHu71+ZykXlaFeAuy5YGCYqWdRgOKstmzOo1a4BXSFXuRLjgCOxYJ4xC+21yE9cYyrZ8NodiqGS2CNZfXAlKfrbXUmD/+hd5kyl7vKP6UpSxUJTZgiMFyjUoHsUGoHPAV9HKjpaHziKvPPPQa+9kB8c8vf4PEZeCcfcN5kxXuVwsDqCyekOTRvV8y1FoWolZLKfkSLaiW4JImBaAP4IkXFWVRsBRnKzc61aXctF0evqzH4+8JfBMWHp8aZl4vC/16hzraE/X9DISbgNuLvOYmBVYJc1+1k/e3Ee13ZsAUFOd9WdY0PjjeUbE5J6m0fz8mgopy+e363EH5zmihCNk1xZYTPEJN1prNcU1R8TYMpqDy8UwFxjTrZfMXa0qXkiDHOKjevfh56GDTr0z/SyjiWvYNciUTXUoT/wLWucKlk+3XBuEE3Ek+DWNvnqn0qlPR2IgvGAYMHPIV9U2Bmif1a955Jm7KvIy62Mb9WGcQ8zjHBxHdlykcV5dOR8sA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dcf9189-432e-4941-0e7b-08d85f727acd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2020 03:40:56.3664 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O1FXGLX9LdLuP2Yya5sAgRjmfugrULVMO7+ZQF2FJbtiq0+htR34COOwPDdblsM8a5splXBQmSUysq9tDcX2rw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3084
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] intel-ethernet: make W=1
 build cleanly
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
> Jesse Brandeburg
> Sent: Friday, September 4, 2020 1:39 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v2] intel-ethernet: make W=1
> build cleanly
> 
> This takes care of all of the trivial W=1 fixes in the Intel
> Ethernet drivers, which allows developers and maintainers to
> build more of the networking tree with more complete warning
> checks.
> 
> Almost all of the changes were trivial comment updates on
> function headers, but some of the changes were for variables that
> were storing a return value from a register read, where the
> return value wasn't used. Those conversions to remove the lvalue
> of the assignment should be safe because the readl memory mapped
> reads are marked volatile and should not be optimized out without
> an lvalue (I suspect a very long time ago this wasn't guaranteed
> as it is today).
> 
> Inspired by Lee Jones' series of wireless work to do the same.
> Compile tested only.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> v2: pointed at net-next instead
> 
>  drivers/net/ethernet/intel/e100.c             |   8 +-
>  drivers/net/ethernet/intel/e1000/e1000_hw.c   | 147 ++++++++----------
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  39 +++--
>  .../net/ethernet/intel/e1000e/80003es2lan.c   |   1 -
>  drivers/net/ethernet/intel/e1000e/ich8lan.c   |  16 +-
>  drivers/net/ethernet/intel/e1000e/netdev.c    |  50 ++++--
>  drivers/net/ethernet/intel/e1000e/phy.c       |   3 +
>  drivers/net/ethernet/intel/e1000e/ptp.c       |   2 +-
>  drivers/net/ethernet/intel/igb/e1000_82575.c  |   6 +-
>  drivers/net/ethernet/intel/igb/e1000_i210.c   |   5 +-
>  drivers/net/ethernet/intel/igb/e1000_mac.c    |   1 +
>  drivers/net/ethernet/intel/igb/e1000_mbx.c    |   1 +
>  drivers/net/ethernet/intel/igb/igb_main.c     |  28 ++--
>  drivers/net/ethernet/intel/igb/igb_ptp.c      |   8 +-
>  drivers/net/ethernet/intel/igbvf/netdev.c     |  17 +-
>  drivers/net/ethernet/intel/igc/igc_main.c     |   2 +-
>  drivers/net/ethernet/intel/igc/igc_ptp.c      |   4 +-
>  drivers/net/ethernet/intel/ixgb/ixgb_hw.c     | 135 ++++++++--------
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  17 +-
>  .../net/ethernet/intel/ixgbevf/ixgbevf_main.c |   3 +-
>  20 files changed, 265 insertions(+), 228 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
