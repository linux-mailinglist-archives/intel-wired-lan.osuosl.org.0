Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD42B1C7F6A
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 02:51:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 521498883D;
	Thu,  7 May 2020 00:51:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id plI1YOBrPoIz; Thu,  7 May 2020 00:51:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B403A88880;
	Thu,  7 May 2020 00:51:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9E861BF3F0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 00:51:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DFD0B876F9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 00:51:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rnWKyrbPFI+6 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 00:51:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2DC687678
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 00:51:18 +0000 (UTC)
IronPort-SDR: KegkGA/XtM8dYlAs6N1WdSLw5POCGiipQKc8Y1OneqK8JAJXDdgnEYkCLOZ+7FDAGxIFzswmu7
 9o6Dn5LuI2bg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 17:51:18 -0700
IronPort-SDR: I4Z52cp2qylLuLNRjjCP9KqTe9cmDW2wjSh0woPGMMkBMBMg8MOb3u7JmqdCi8Pkz5g3weg85B
 nnJJTVolaEVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,361,1583222400"; d="scan'208";a="260362665"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga003.jf.intel.com with ESMTP; 06 May 2020 17:51:18 -0700
Received: from orsmsx112.amr.corp.intel.com ([169.254.3.248]) by
 ORSMSX106.amr.corp.intel.com ([169.254.1.150]) with mapi id 14.03.0439.000;
 Wed, 6 May 2020 17:51:18 -0700
From: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
To: David Miller <davem@davemloft.net>, "yanaijie@huawei.com"
 <yanaijie@huawei.com>
Thread-Topic: [PATCH net-next] i40e: Make i40e_shutdown_adminq() return void
Thread-Index: AQHWI25tmvA42/9KCUuzJLtjmKxV26icAdWA///KUoA=
Date: Thu, 7 May 2020 00:51:16 +0000
Message-ID: <61CC2BC414934749BD9F5BF3D5D940449868CF1C@ORSMSX112.amr.corp.intel.com>
References: <20200506061835.19662-1-yanaijie@huawei.com>
 <20200506.140239.2129195871879981516.davem@davemloft.net>
In-Reply-To: <20200506.140239.2129195871879981516.davem@davemloft.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Make
 i40e_shutdown_adminq() return void
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Azarewicz,
 Piotr" <piotr.azarewicz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: David Miller <davem@davemloft.net>
> Sent: Wednesday, May 6, 2020 14:03
> To: yanaijie@huawei.com
> Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; Azarewicz, Piotr
> <piotr.azarewicz@intel.com>; intel-wired-lan@lists.osuosl.org;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH net-next] i40e: Make i40e_shutdown_adminq() return void
> 
> From: Jason Yan <yanaijie@huawei.com>
> Date: Wed, 6 May 2020 14:18:35 +0800
> 
> > Fix the following coccicheck warning:
> >
> > drivers/net/ethernet/intel/i40e/i40e_adminq.c:699:13-21: Unneeded
> > variable: "ret_code". Return "0" on line 710
> >
> > Signed-off-by: Jason Yan <yanaijie@huawei.com>
> 
> Jeff, please pick this up.
> 
> Thank you.
[Kirsher, Jeffrey T] 

Yep already added it to my queue, thanks.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
