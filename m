Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EAC4A80CA
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 10:00:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D626283F59;
	Thu,  3 Feb 2022 09:00:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6Pjsacqz8Rj9; Thu,  3 Feb 2022 09:00:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C830983F47;
	Thu,  3 Feb 2022 09:00:28 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 95A651BF403
 for <intel-wired-lan@osuosl.org>; Thu,  3 Feb 2022 09:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8248A81498
 for <intel-wired-lan@osuosl.org>; Thu,  3 Feb 2022 09:00:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5z0vUaVrMlZ6 for <intel-wired-lan@osuosl.org>;
 Thu,  3 Feb 2022 09:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B16E08148D
 for <intel-wired-lan@osuosl.org>; Thu,  3 Feb 2022 09:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643878823; x=1675414823;
 h=subject:to:references:from:message-id:date:mime-version:
 in-reply-to; bh=SyZ0EZ/Yv+g7eFgZYGEcWef687L01DclxmeHaur4Qr4=;
 b=K6yj8Su5q/zz7vr3x8Fo1lJEpmfo7xe691jq4gqle8u0QxqOPbU63wQm
 jen0nFgh/fCKINi4RG6LO0dOuPArOifQnVRJ4k+nu3PbYtOB10J5euDS2
 NG+2x6lwpY+9kkUgxdM1adJwmepFa/PnPGZeBfwWg1pbIWutNwDbwsYeH
 HaAlSqzgcHVZOmOie5jve3pZ+0UBOBKiwSie9mYoB8I9go+l4V2tM+44r
 lgtLcejqf6SNlQ0xQbL2M4l5e35DP21Az5rKaMmKolXGWV20UQiSqVaIG
 GARyeD6RQxmA7oyc0M/dp6J6zS2cYmnftD3PWcDh+eiO8GtT7qxpkv0tu g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="245697651"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; 
 d="scan'208,217";a="245697651"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 01:00:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; 
 d="scan'208,217";a="523821555"
Received: from dfuxbrum-desk.ger.corp.intel.com (HELO [10.12.48.255])
 ([10.12.48.255])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 01:00:20 -0800
To: Corinna Vinschen <vinschen@redhat.com>, intel-wired-lan@osuosl.org,
 netdev@vger.kernel.org, Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20220119145259.1790015-1-vinschen@redhat.com>
 <20220119145259.1790015-2-vinschen@redhat.com>
From: "Fuxbrumer, Devora" <dvorax.fuxbrumer@linux.intel.com>
Message-ID: <ffe614b0-1f7b-8225-16a7-3a7a42867599@linux.intel.com>
Date: Thu, 3 Feb 2022 11:00:17 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20220119145259.1790015-2-vinschen@redhat.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH 1/2 net-next v6] igc: avoid kernel
 warning when changing RX ring parameters
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
Content-Type: multipart/mixed; boundary="===============2712177919884662010=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This is a multi-part message in MIME format.
--===============2712177919884662010==
Content-Type: multipart/alternative;
 boundary="------------C263BB9630B4D2867EDA463E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C263BB9630B4D2867EDA463E
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/19/2022 16:52, Corinna Vinschen wrote:
> Calling ethtool changing the RX ring parameters like this:
>
>    $ ethtool -G eth0 rx 1024
>
> on igc triggers kernel warnings like this:
>
> [  225.198467] ------------[ cut here ]------------
> [  225.198473] Missing unregister, handled but fix driver
> [  225.198485] WARNING: CPU: 7 PID: 959 at net/core/xdp.c:168
> xdp_rxq_info_reg+0x79/0xd0
> [...]
> [  225.198601] Call Trace:
> [  225.198604]  <TASK>
> [  225.198609]  igc_setup_rx_resources+0x3f/0xe0 [igc]
> [  225.198617]  igc_ethtool_set_ringparam+0x30e/0x450 [igc]
> [  225.198626]  ethnl_set_rings+0x18a/0x250
> [  225.198631]  genl_family_rcv_msg_doit+0xca/0x110
> [  225.198637]  genl_rcv_msg+0xce/0x1c0
> [  225.198640]  ? rings_prepare_data+0x60/0x60
> [  225.198644]  ? genl_get_cmd+0xd0/0xd0
> [  225.198647]  netlink_rcv_skb+0x4e/0xf0
> [  225.198652]  genl_rcv+0x24/0x40
> [  225.198655]  netlink_unicast+0x20e/0x330
> [  225.198659]  netlink_sendmsg+0x23f/0x480
> [  225.198663]  sock_sendmsg+0x5b/0x60
> [  225.198667]  __sys_sendto+0xf0/0x160
> [  225.198671]  ? handle_mm_fault+0xb2/0x280
> [  225.198676]  ? do_user_addr_fault+0x1eb/0x690
> [  225.198680]  __x64_sys_sendto+0x20/0x30
> [  225.198683]  do_syscall_64+0x38/0x90
> [  225.198687]  entry_SYSCALL_64_after_hwframe+0x44/0xae
> [  225.198693] RIP: 0033:0x7f7ae38ac3aa
>
> igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
> reset the xdp_rxq_info member before calling igc_setup_rx_resources().
> This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.
>
> Make sure to unregister the xdp_rxq_info structure first in
> igc_setup_rx_resources.
>
> Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
> Reported-by: Lennert Buytenhek <buytenh@arista.com>
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
>   1 file changed, 3 insertions(+)
>
Tested-by: Dvora Fuxbrumer <dvorax.fuxbrumer@linux.intel.com 
<mailto:dvorax.fuxbrumer@linux.intel.com>>

--------------C263BB9630B4D2867EDA463E
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/19/2022 16:52, Corinna Vinschen
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:20220119145259.1790015-2-vinschen@redhat.com">
      <pre class="moz-quote-pre" wrap="">Calling ethtool changing the RX ring parameters like this:

  $ ethtool -G eth0 rx 1024

on igc triggers kernel warnings like this:

[  225.198467] ------------[ cut here ]------------
[  225.198473] Missing unregister, handled but fix driver
[  225.198485] WARNING: CPU: 7 PID: 959 at net/core/xdp.c:168
xdp_rxq_info_reg+0x79/0xd0
[...]
[  225.198601] Call Trace:
[  225.198604]  &lt;TASK&gt;
[  225.198609]  igc_setup_rx_resources+0x3f/0xe0 [igc]
[  225.198617]  igc_ethtool_set_ringparam+0x30e/0x450 [igc]
[  225.198626]  ethnl_set_rings+0x18a/0x250
[  225.198631]  genl_family_rcv_msg_doit+0xca/0x110
[  225.198637]  genl_rcv_msg+0xce/0x1c0
[  225.198640]  ? rings_prepare_data+0x60/0x60
[  225.198644]  ? genl_get_cmd+0xd0/0xd0
[  225.198647]  netlink_rcv_skb+0x4e/0xf0
[  225.198652]  genl_rcv+0x24/0x40
[  225.198655]  netlink_unicast+0x20e/0x330
[  225.198659]  netlink_sendmsg+0x23f/0x480
[  225.198663]  sock_sendmsg+0x5b/0x60
[  225.198667]  __sys_sendto+0xf0/0x160
[  225.198671]  ? handle_mm_fault+0xb2/0x280
[  225.198676]  ? do_user_addr_fault+0x1eb/0x690
[  225.198680]  __x64_sys_sendto+0x20/0x30
[  225.198683]  do_syscall_64+0x38/0x90
[  225.198687]  entry_SYSCALL_64_after_hwframe+0x44/0xae
[  225.198693] RIP: 0033:0x7f7ae38ac3aa

igc_ethtool_set_ringparam() copies the igc_ring structure but neglects to
reset the xdp_rxq_info member before calling igc_setup_rx_resources().
This in turn calls xdp_rxq_info_reg() with an already registered xdp_rxq_info.

Make sure to unregister the xdp_rxq_info structure first in
igc_setup_rx_resources.

Fixes: 73f1071c1d29 ("igc: Add support for XDP_TX action")
Reported-by: Lennert Buytenhek <a class="moz-txt-link-rfc2396E" href="mailto:buytenh@arista.com">&lt;buytenh@arista.com&gt;</a>
Signed-off-by: Corinna Vinschen <a class="moz-txt-link-rfc2396E" href="mailto:vinschen@redhat.com">&lt;vinschen@redhat.com&gt;</a>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 3 +++
 1 file changed, 3 insertions(+)

</pre>
    </blockquote>
    <span style="direction:ltr;unicode-bidi:embed" lang="en-US">Tested-by:
      Dvora Fuxbrumer
      &lt;</span><a href="mailto:dvorax.fuxbrumer@linux.intel.com"><span
        style="direction:ltr;unicode-bidi:embed" lang="en-US">dvorax.fuxbrumer@linux.intel.com</span></a><span
      style="direction:ltr;unicode-bidi:embed" lang="en-US">&gt;</span>
  </body>
</html>

--------------C263BB9630B4D2867EDA463E--

--===============2712177919884662010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============2712177919884662010==--
