Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E70162DC6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Feb 2020 19:07:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 68FE086373;
	Tue, 18 Feb 2020 18:07:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wnzFvvyirHXk; Tue, 18 Feb 2020 18:07:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7110862E8;
	Tue, 18 Feb 2020 18:07:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3CAD11BF968
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2094620489
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IRkPw+9uwUpt for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Feb 2020 18:07:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E1A020361
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Feb 2020 18:07:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 10:07:32 -0800
X-IronPort-AV: E=Sophos;i="5.70,456,1574150400"; d="scan'208";a="228817053"
Received: from aguedesl-mac01.jf.intel.com (HELO localhost) ([10.24.12.227])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Feb 2020 10:07:31 -0800
MIME-Version: 1.0
In-Reply-To: <20200214235203.3910513-3-vinicius.gomes@intel.com>
References: <20200214235203.3910513-1-vinicius.gomes@intel.com>
 <20200214235203.3910513-3-vinicius.gomes@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
From: Andre Guedes <andre.guedes@linux.intel.com>
Message-ID: <158204925112.42041.14818320744953321769@1.0.0.127.in-addr.arpa>
User-Agent: alot/0.8.1
Date: Tue, 18 Feb 2020 10:07:31 -0800
Subject: Re: [Intel-wired-lan] [next-queue PATCH v3 2/2] igc: Add support
 for ETF offloading
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

Quoting Vinicius Costa Gomes (2020-02-14 15:52:03)
> This adds support for ETF offloading for the i225 controller.
> 
> For i225, the LaunchTime feature is almost a subset of the Qbv
> feature. The main change from the i210 is that the launchtime of each
> packet is specified as an offset applied to the BASET register. BASET
> is automatically incremented each cycle.
> 
> For i225, the approach chosen is to re-use most of the setup used for
> taprio offloading. With a few changes:
> 
>  - The more or less obvious one is that when ETF is enabled, we should
>  set add the expected launchtime to the (advanced) transmit
>  descriptor;
> 
>  - The less obvious, is that when taprio offloading is not enabled, we
>  add a dummy schedule (all queues are open all the time, with a cycle
>  time of 1 second).
> 
> Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Andre Guedes <andre.guedes@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
