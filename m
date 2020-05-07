Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 260171C9C84
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 22:37:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A04C1879B8;
	Thu,  7 May 2020 20:37:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3PBjCWjDKJNQ; Thu,  7 May 2020 20:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F35587774;
	Thu,  7 May 2020 20:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06C4B1BF402
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:37:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E32B726688
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tPcsfw56hNBB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 20:37:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by silver.osuosl.org (Postfix) with ESMTPS id 28276203DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 20:37:07 +0000 (UTC)
IronPort-SDR: 18DhCnef5vzbZQ3Fv8q4BnFmuL/JkcgMtAtAu61L0YtOoXzLJSFHNO3vvjyRunm4jEYYqmWmG+
 lHRpp26vBqog==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 13:37:04 -0700
IronPort-SDR: tsfILzCklbVEDZonvV3Vguv/f86AgUf6+1Qg8+UzEN9uJrbDuxIqvjXk3wKAnJpmWQLiQlLRd9
 dGEeE/IU9Ykw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="407769504"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by orsmga004.jf.intel.com with ESMTP; 07 May 2020 13:37:05 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:37:04 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX156.amr.corp.intel.com (10.22.240.22) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:37:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 13:37:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DSXshcvLJD573HkqDAVME3P90/+UKONpYWUUYbzTrb/kNTsHJGYibZouqUXFRAhEoGV0/zQopvh544yxVZZAed6tQQ1mSUpTZWfEMnaG9cS5M4WM9FyB/YIqzwaW+5yS9BlQZE9cs/hpAxinaU3R/NJdCyoLNvss9EuSgVNtUH/3eFVW2mzjDl+pnRpO3MIaSlBxMDO4Q7xNjzDwhwHc7sf+GCnJPQbo0bIiciycHzwr8+B6Grx5GaxyDQ/CyjrEp2DUhO+b+mS8IsaumxR2gJNnNb7HfqKBthqKIarhCqlwVbUdrKs4eOFcxr57ATAIK+ayxim6euaQxDRjznt+7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6con+BcDNwNjzg/askOZCSN7LAOJJ1IcWoPFw+IduU=;
 b=FnF8z6FE7dnslIqgAowhezTlIX0NGZY+PSAZLZqN7cgEU1hpTBfieETRF6ZcFcREKUZ2d44pK8334/ngUrI7ltjimGewvvMMAtw8kA0/V9belmsG19O1iV6W8B90frC910dayY9w6MtIGTAZH4YIBobjcqVxKN7c6o60qFZAMNl2sezEikz5Y5Jv7gI3e+btjkYYJ/YxHzDEgl7V0mlPLWNyM4LmlJat0uvvr2rMWHT3JPLBGPrXobQBf+Z70oD7PPPUp7HM0A4ONeUPXkdzQcPVuH84aEf4BQNm5OLrA2+H4dLsj4D2xJuR5dSyq7iPJKhnf0wy2RoZTqgfzGRmgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q6con+BcDNwNjzg/askOZCSN7LAOJJ1IcWoPFw+IduU=;
 b=X71LDGF2hWHkMJWjc+jKyh8Qj/JXQZu/eNcAMYaDnrerzH/Wi3K+htrw22WgdoiM6NDDwB6NLYC/p8dbKL2ug0r5u/xnqJwfl6INrh3cHUFM3oAKPgFtkIwK+0HzQqxGbWv7kWXpcmG4EzZDtvL9RVSIAo/8u/bHKJ82k3re2zU=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1594.namprd11.prod.outlook.com (2603:10b6:4:5::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.30; Thu, 7 May 2020 20:37:03 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::34e5:3ad6:73cd:4783%12]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 20:37:02 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ixgbe: fix
 signed-integer-overflow warning
Thread-Index: AQHWIob5Szp0EI9s4kGOWba/IHdMOKidGTaA
Date: Thu, 7 May 2020 20:37:02 +0000
Message-ID: <DM5PR11MB165997BA5F9C67A56DACF29E8CA50@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200505024521.24635-1-xiexiuqi@huawei.com>
In-Reply-To: <20200505024521.24635-1-xiexiuqi@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.207]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 897b7073-c892-46e9-5771-08d7f2c66611
x-ms-traffictypediagnostic: DM5PR11MB1594:
x-microsoft-antispam-prvs: <DM5PR11MB15948143D51A2DFAFB503F558CA50@DM5PR11MB1594.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b83cvhFVzcxsS9HEpNWMl33Ntgv402kfMMIvSZDxXrFIvAcdAeDWdK0I3qYnKpD4I3TyFhrBd9EzRmLy1m2Mlg1QKKw09tI6dqIABlFTTwWunPnG0+NJ0QnO9lS8DLJybotH+pOUjv4vQ99Gx0h/VIu/WKNkTnUAh842UC11FYzvgPZMJb/qm9rwnUY5H/s6yvp8IS5EDS1IDIP0gdE7sSxafKLvFFYpo3KXwIAw6Gv+ctgbFXfu4bAj0+TLePOiBNqxywPcls3WInDlOdLWoInyrfHM7R3IeiEZn2Tg6SaTz0bZJqRUrTrGb6tk0mQoomW9603H9ViLW9MW+s23HrTibIqyC+ddCKHaUQWUyPqK33UeLjwQG1OjMKD+9n/UqAnlVmLnn3/L3AUGyn0hyjTVQU+89qIO3YMsQNkHK8WpuCb0N6ci7FXGyHxiwg2tOiG+EWgqkjoZwMVUnObihO1zsobTBgrW2lCmw5Qm1Pvuft1cQr15Gvjrq6g4XWGnv4BdbnQNGKa5rrcEzkjfaA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39860400002)(366004)(396003)(376002)(346002)(33430700001)(86362001)(6506007)(26005)(53546011)(7696005)(186003)(83300400001)(2906002)(33656002)(83320400001)(83280400001)(83310400001)(83290400001)(52536014)(76116006)(66556008)(66446008)(64756008)(71200400001)(66476007)(478600001)(5660300002)(110136005)(33440700001)(55016002)(9686003)(316002)(66946007)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 73OEoiUFnJ4osLFHjKwui1KbGbsm8RALShjy0AgC1cVDWKK7MkcZWQDO9qF2mJaTQ52AlOnLRbEWGDG+9BNA4wI0qudMCicptF5hUz7qBjKRcUSQbqXWbthZuU/ZYjlVPK2s7HN5Qnu4ukTdlerSjj9AsOXuhZ3vx8NTsdPpYFkzkn9U6HGEIrbsuODNWDBoLF1ULEsfpoQHahpqhqyDycm6kgbqzvH3Ux81xnjjwDsunhtq+gQhktnrDYOoO29DG+2fkcRAOmfKNBZmHiZZJ6Pc3btHzgEck/pLwu8xg0Aib6N2vstMitL8jIWfoY8sPoXYtwlG3Cb/+4xkzcjd4FPwc0wCzsTi03UbRqiHrb6tQgs01zPR4scWThmg0wjDJJ7LR84e3Gh9TpPGo/r5Lj6VxQP6WlXjf5K94vE2IdH+/+076yonz+gEkJ7A8kQ75/b64FOpoC+tM4ADRlVbGXbC6Kqwjcq3wcRmU9ipv98wUBErTq68wkYFWMJPEI892uJX3Sze4/5ax2TVrc4v1TKxXwQv8KPufeSpPJh9Hh18jZEiB1JLtMMNaui7u0FJXw08ooxuwwcYknLh/S4cZ0+PJew1hyY5/3G6CE5RTLiBty6syZhlcCtPkhmnVxGjkxvnZ2vxS0qc+cqkhSE2FqRJaSEpiJoJ89oh3es/SLMWhtaiftwgd8Fq2f31H6tc6pT2sA+Tuj72WH50rVNbu0XmdVU/iw6sAtyGUTATFZyTj8oNJ024e64SiTAEAn3H3WzvrXXElqnKtdKFKKbwGik9toKBzJ5REr2tIVMCbmg=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 897b7073-c892-46e9-5771-08d7f2c66611
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 20:37:02.3964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uqH6pT9jbN6cRwgL4JBv8k7vJJby+1tV8RNt2PXrFT7cL7gNuYjGCSf9KyUPORnmynKr/KE+Xfio3DKZYBsj5+2P9nE5U0hU+Jg8uCa8Lxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1594
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ixgbe: fix
 signed-integer-overflow warning
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

-----Original Message-----
From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Xie XiuQi
Sent: Monday, May 4, 2020 7:45 PM
To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net
Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-kernel@vger.kernel.org
Subject: [Intel-wired-lan] [PATCH net-next] ixgbe: fix signed-integer-overflow warning

ubsan report this warning, fix it by adding a unsigned suffix.

UBSAN: signed-integer-overflow in
drivers/net/ethernet/intel/ixgbe/ixgbe_common.c:2246:26
65535 * 65537 cannot be represented in type 'int'
CPU: 21 PID: 7 Comm: kworker/u256:0 Not tainted 5.7.0-rc3-debug+ #39 Hardware name: Huawei TaiShan 2280 V2/BC82AMDC, BIOS 2280-V2 03/27/2020
Workqueue: ixgbe ixgbe_service_task [ixgbe] Call trace:
 dump_backtrace+0x0/0x3f0
 show_stack+0x28/0x38
 dump_stack+0x154/0x1e4
 ubsan_epilogue+0x18/0x60
 handle_overflow+0xf8/0x148
 __ubsan_handle_mul_overflow+0x34/0x48
 ixgbe_fc_enable_generic+0x4d0/0x590 [ixgbe]
 ixgbe_service_task+0xc20/0x1f78 [ixgbe]
 process_one_work+0x8f0/0xf18
 worker_thread+0x430/0x6d0
 kthread+0x218/0x238
 ret_from_fork+0x10/0x18

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Xie XiuQi <xiexiuqi@huawei.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)


Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
