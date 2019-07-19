Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 553E36E895
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Jul 2019 18:21:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C037087969;
	Fri, 19 Jul 2019 16:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y8zWthZz5XVQ; Fri, 19 Jul 2019 16:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 991A5878EA;
	Fri, 19 Jul 2019 16:21:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 984021BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D31C8704A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cnVyeT0XwM+s for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Jul 2019 16:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9D1E847CD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Jul 2019 16:21:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 09:21:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; d="scan'208";a="320004439"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2019 09:21:29 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 19 Jul 2019 09:21:28 -0700
Received: from orsmsx104.amr.corp.intel.com ([169.254.4.232]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.245]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 09:21:28 -0700
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: reduce stack usage in i40e_set_fc
Thread-Index: AQHVOwnVVFCI4V0hdECZPxc3EWAaEKbSJavw
Date: Fri, 19 Jul 2019 16:21:27 +0000
Message-ID: <26D9FDECA4FBDD4AADA65D8E2FC68A4A1D40C2EB@ORSMSX104.amr.corp.intel.com>
References: <20190715123518.3510791-1-arnd@arndb.de>
In-Reply-To: <20190715123518.3510791-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTljMGYyYzItYTEwYy00MzY5LThiNTctNTk5NTEwOTczOWVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoia1FMaEpKT3NXbVhlZlY1Q2Z3dFhaaEp4TVV3WnZHNmpcL0hvU255eU9RcXZsQWpwZ2hMS0JDUWp6U2V0WXB1VVMifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH] i40e: reduce stack usage in
 i40e_set_fc
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan [mailto:intel-wired-lan-bounces@osuosl.org] On
> Behalf Of Arnd Bergmann
> Sent: Monday, July 15, 2019 5:35 AM
> To: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; David S. Miller
> <davem@davemloft.net>
> Cc: Catherine Sullivan <catherine.sullivan@intel.com>; Dziggel, Douglas A
> <douglas.a.dziggel@intel.com>; Arnd Bergmann <arnd@arndb.de>;
> netdev@vger.kernel.org; Patryk Ma=B3ek <patryk.malek@intel.com>; linux-
> kernel@vger.kernel.org; Azarewicz, Piotr <piotr.azarewicz@intel.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; clang-built-
> linux@googlegroups.com; intel-wired-lan@lists.osuosl.org; Marczak, Piotr
> <piotr.marczak@intel.com>
> Subject: [Intel-wired-lan] [PATCH] i40e: reduce stack usage in i40e_set_fc
> =

> The functions i40e_aq_get_phy_abilities_resp() and i40e_set_fc() both have
> giant structure on the stack, which makes each one use stack frames larger
> than 500 bytes.
> =

> As clang decides one function into the other, we get a warning for exceed=
ing
> the frame size limit on 32-bit architectures:
> =

> drivers/net/ethernet/intel/i40e/i40e_common.c:1654:23: error: stack frame
> size of 1116 bytes in function 'i40e_set_fc' [-Werror,-Wframe-larger-than=
=3D]
> =

> When building with gcc, the inlining does not happen, but i40e_set_fc() c=
alls
> i40e_aq_get_phy_abilities_resp() anyway, so they add up on the kernel
> stack just as much.
> =

> The parts that actually use large stacks don't overlap, so make sure each=
 one
> is a separate function, and mark them as noinline_for_stack to prevent the
> compilers from combining them again.
> =

> Fixes: 0a862b43acc6 ("i40e/i40evf: Add module_types and
> update_link_info")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_common.c | 91 +++++++++++--------
>  1 file changed, 51 insertions(+), 40 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
